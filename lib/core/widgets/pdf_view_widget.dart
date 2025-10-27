import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class PdfViewWidget extends StatefulWidget {
  final String url;

  const PdfViewWidget({super.key, required this.url});

  @override
  State<StatefulWidget> createState() => _PdfViewWidgetState();
}

class _PdfViewWidgetState extends State<PdfViewWidget> {
  final ObsValue<PDFDocument?> _isLoadingObs = ObsValue.withInit(null);

  @override
  void initState() {
    PDFDocument.fromURL(widget.url).then(
      (value) {
        _isLoadingObs.setValue(value);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: _isLoadingObs,
        builder: (context, value) {
          if (value == null) {
            return Center(
              child: CupertinoActivityIndicator(
                color: context.colors.black,
                radius: 8,
              ),
            );
          }
          return Center(
            child: PDFViewer(
              document: value,
              enableSwipeNavigation: false,
              lazyLoad: true,
              showIndicator: false,
              showPicker: false,
              showNavigation: false,
            ),
          );
        });
  }
}
