import 'package:path/path.dart' as path;
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:pro_image_editor/core/models/editor_callbacks/pro_image_editor_callbacks.dart';
import 'package:pro_image_editor/core/models/editor_configs/pro_image_editor_configs.dart';
import 'package:pro_image_editor/features/main_editor/main_editor.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';


class ImageEditorHelper {

  static Future<Map<String, dynamic>?> editImage({
    required List<Attachment> images,
    required BuildContext context,
    int initialIndex = 0,
  }) async {
    if (images.isEmpty) return null;

    // Show simple image viewer with edit functionality
    return await Navigator.push<Map<String, dynamic>?>(
      context,
      MaterialPageRoute(
        builder: (context) => _SimpleImageViewer(
          images: images,
          initialIndex: initialIndex,
        ),
        fullscreenDialog: true,
      ),
    );
  }
}

/// Simple image viewer with edit button
class _SimpleImageViewer extends StatefulWidget {
  final List<Attachment> images;
  final int initialIndex;

  const _SimpleImageViewer({
    required this.images,
    required this.initialIndex,
  });

  @override
  State<_SimpleImageViewer> createState() => _SimpleImageViewerState();
}

class _SimpleImageViewerState extends State<_SimpleImageViewer> {
  late final ObsValue<int> currentIndexObs;
  late final ObsValue<List<Attachment>> imagesObs;
  late final PageController _pageController;
  late final TextEditingController _captionController;

  @override
  void initState() {
    super.initState();
    currentIndexObs = ObsValue<int>.withInit(widget.initialIndex);
    imagesObs = ObsValue<List<Attachment>>.withInit(List.from(widget.images));
    _pageController = PageController(initialPage: widget.initialIndex);
    _captionController = TextEditingController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _captionController.dispose();
    super.dispose();
  }

  Future<void> _editImage(int imageIndex) async {
    final currentImages = imagesObs.getValue();
    final imageToEdit = currentImages[imageIndex];

    try {
      final editedBytes = await Navigator.push<Uint8List?>(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            backgroundColor: context.colors.black,
            body: ProImageEditor.file(
              File(imageToEdit.file!.path!),
              callbacks: ProImageEditorCallbacks(
                onImageEditingComplete: (bytes) async {
                  Navigator.pop(context, bytes);
                },
              ),
              configs: ProImageEditorConfigs(
                designMode: ImageEditorDesignMode.material,
                i18n: I18n(
                  cancel: Translate.s.image_editor_cancel,
                  undo: Translate.s.image_editor_undo,
                  redo: Translate.s.image_editor_redo,
                  done: Translate.s.image_editor_done,
                  remove: Translate.s.image_editor_remove,
                  doneLoadingMsg: Translate.s.image_editor_apply,
                  paintEditor: I18nPaintEditor(
                    bottomNavigationBarText: Translate.s.image_editor_paint,
                    done: Translate.s.image_editor_done,
                    back: Translate.s.image_editor_back,
                  ),
                  textEditor: I18nTextEditor(
                    bottomNavigationBarText: Translate.s.image_editor_text,
                    done: Translate.s.image_editor_done,
                    back: Translate.s.image_editor_back,
                  ),
                  cropRotateEditor: I18nCropRotateEditor(
                    bottomNavigationBarText: Translate.s.image_editor_crop_rotate,
                    done: Translate.s.image_editor_done,
                    back: Translate.s.image_editor_back,
                  ),
                  filterEditor: I18nFilterEditor(
                    bottomNavigationBarText: Translate.s.image_editor_filter,
                    done: Translate.s.image_editor_done,
                    back: Translate.s.image_editor_back,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      if (editedBytes != null && mounted) {
        // Replace the image with edited version
        final file = await getIt<AppFileService>().convertUint8ListToFile(
          editedBytes,
          imageToEdit.file!.path!.split('/').last,
        );

        final editedAttachment = Attachment(
          type: 'image',
          file: AttachmentFile(
            bytes: editedBytes,
            size: editedBytes.length,
            path: file.path,
          ),
          title: path.basename(file.path),
        );

        // Update the image in the list
        final updatedImages = List<Attachment>.from(currentImages);
        updatedImages[imageIndex] = editedAttachment;
        imagesObs.setValue(updatedImages);

        AppSnackBar.showSimpleToast(
          msg: '✅ Image edited successfully!',
          type: ToastType.success,
        );
      }
    } catch (e) {
      if (mounted) {
        AppSnackBar.showSimpleToast(
          msg: 'Failed to edit image: ${e.toString()}',
          type: ToastType.error,
        );
      }
    }
  }

  void _sendImages() {
    Navigator.of(context).pop({
      'images': imagesObs.getValue(),
      'caption': _captionController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: context.colors.black,
        leading: IconButton(
          icon: Icon(Icons.close, color: context.colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: ObsValueConsumer<int>(
          observable: currentIndexObs,
          builder: (context, currentIndex) {
            return Text(
              '${currentIndex + 1} of ${widget.images.length}',
              style: AppTextStyle.s16_w500(color: context.colors.white),
            );
          },
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Main image viewer
          Expanded(
            child: ObsValueConsumer<List<Attachment>>(
              observable: imagesObs,
        builder: (context, images) {
                return PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    currentIndexObs.setValue(index);
                  },
                  itemCount: images.length,
                  itemBuilder: (context, pageIndex) {
                    final currentImage = images[pageIndex];
                    return Container(
                      margin: const EdgeInsets.all(8),
                      child: Stack(
                        children: [
                          // Main image
                          Positioned.fill(
                            child: Image.file(
                      File(currentImage.file!.path!),
                              fit: BoxFit.contain,
                            ),
                          ),
                          
                          // Edit button overlay
                          Positioned(
                            top: 16,
                            right: 16,
                            child: GestureDetector(
                              onTap: () => _editImage(pageIndex),
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.black.withValues(alpha: 0.6),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.edit,
                                  color: context.colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                    );
                  },
                ),
              ),
              
              // Thumbnail strip (if multiple images)
          ObsValueConsumer<List<Attachment>>(
            observable: imagesObs,
            builder: (context, images) {
              if (images.length <= 1) return const SizedBox.shrink();
              
              return Container(
                  height: 60,
                  color: context.colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ObsValueConsumer<int>(
                    observable: currentIndexObs,
                    builder: (context, currentIndex) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          final isSelected = index == currentIndex;
                          return GestureDetector(
                            onTap: () {
                              currentIndexObs.setValue(index);
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Container(
                              width: 44,
                              height: 44,
                              margin: const EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected 
                                    ? context.colors.primary 
                                      : Colors.transparent,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.file(
                                  File(images[index].file!.path!),
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                              ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
              );
            },
                ),
              
          // Caption and send area
              Container(
                color: context.colors.black,
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 12,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 16,
                ),
                child: SafeArea(
                  top: false,
                  child: Row(
                    children: [
                      // Caption input
                      Expanded(
                        child: Container(
                          constraints: const BoxConstraints(minHeight: 50),
                          decoration: BoxDecoration(
                            color: context.colors.inputFillColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextField(
                            controller: _captionController,
                            style: AppTextStyle.s16_w400(
                              color: context.colors.textColor,
                            ),
                            decoration: InputDecoration(
                          hintText: Translate.s.add_caption,
                              hintStyle: AppTextStyle.s16_w400(
                                color: context.colors.grey,
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                            ),
                            maxLines: 4,
                            minLines: 1,
                            textCapitalization: TextCapitalization.sentences,
                          ),
                        ),
                      ),
                      
                      const SizedBox(width: 12),
                      
                      // Send button
                      GestureDetector(
                    onTap: _sendImages,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: context.colors.primary,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.send_rounded,
                            color: context.colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
      ),
          ),
        ],
      ),
    );
  }
}