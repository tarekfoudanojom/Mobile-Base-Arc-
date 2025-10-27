part of 'campaign_data_widgets_imports.dart';

class CampaignAttachedFileWidget extends StatelessWidget {
  final CampaignDataController controller;

  const CampaignAttachedFileWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.attachmentsFilesListObs,
      builder: (context, filesList) {
        return Container();
      },
    );
  }

  /// Build preview widget for assets (URLs) - following order_attach_file_widget pattern
  // Widget _buildAssetPreview(CampaignAsset asset, BuildContext context) {
  //   if (asset.url.contains('.pdf')) {
  //     return Container(
  //       width: 35,
  //       height: 35,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(5),
  //       ),
  //       child: PdfViewWidget(url: asset.url),
  //     );
  //   } else {
  //     return CachedImage(
  //       url: asset.url,
  //       width: 35,
  //       height: 35,
  //       bgColor: Colors.transparent,
  //       borderRadius: BorderRadius.circular(5),
  //       placeHolder: SvgPicture.asset(Res.pdfIcon, width: 70, height: 70),
  //     );
  //   }
  // }

  /// Check if asset type is an image
  bool _isImageType(String type) {
    return ['jpg', 'jpeg', 'png', 'gif', 'webp', 'bmp']
        .contains(type.toLowerCase());
  }

  /// Get filename from URL
  String _getAssetFileName(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return url;
    return uri.pathSegments.isNotEmpty ? uri.pathSegments.last : url;
  }

  /// Open asset (image/pdf viewer)
  // void _openAsset(CampaignAsset asset, BuildContext context) {
  //   if (asset.type == 'pdf') {
  //     AutoRouter.of(context).push(PdfViewerPageRoute(pdfUrl: asset.url));
  //   } else if (_isImageType(asset.type)) {
  //     AutoRouter.of(context).push(ImagePreviewPageRoute(
  //       listImages: [asset.url],
  //     ));
  //   } else {
  //     // For other file types, launch in browser
  //     getIt<Utilities>().launchUrlLauncher(url: asset.url);
  //   }
  // }

  /// Show delete asset dialog - following order_attach_file_widget pattern
  // void _showDeleteAssetDialog(
  //     BuildContext context, int assetId, ObsValue<bool> deleteAssetLoadingObs) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return DeleteAssetDialogWidget(
  //         onPressDelete: () =>
  //             _deleteAssetRemotely(context, assetId, deleteAssetLoadingObs),
  //       );
  //     },
  //   );
  // }

  /// Delete asset remotely and update the list - following order_attach_file_widget pattern
  Future<void> _deleteAssetRemotely(BuildContext context, int assetId,
      ObsValue<bool> deleteAssetLoadingObs) async {
    deleteAssetLoadingObs.setValue(true);
    Navigator.pop(context);

    // Get campaign ID and star ID from controller
    int? campaignId;
    int? starId;

    // First try to get campaign ID from controller's campaignId property
    if (controller.campaignId != null) {
      campaignId = controller.campaignId;
    }
    // Fallback to campaignModel if available
    // else if (controller.campaignModel?.campaignId != null) {
    //   campaignId = controller.campaignModel!.campaignId;
    // }

    // Get star ID from campaignProfileModel
    if (controller.campaignProfileModel?.id != null) {
      starId = controller.campaignProfileModel!.id;
    }

    if (campaignId == null) {
      deleteAssetLoadingObs.setValue(false);
      AppSnackBar.showSimpleToast(msg: Translate.s.campaign_id_not_found);
      return;
    }

    if (starId == null) {
      deleteAssetLoadingObs.setValue(false);
      AppSnackBar.showSimpleToast(msg: Translate.s.star_id_not_found);
      return;
    }

    // // Create params for star assets API call
    // final params = StarAssetsParams(
    //   campaignId: campaignId,
    //   starId: starId,
    //   assetsIds: [assetId],
    // );
    //
    // // Call the new star assets API
    // var result = await getIt<CampaignsRepositories>().deleteStarAssets(params);
    //
    // result.when(
    //   isSuccess: (data) {
    //     // Remove from local list - same pattern as order details
    //     controller.assetsObs.getValue().removeWhere((e) => e.id == assetId);
    //     controller.assetsObs.refresh();
    //
    //     // Show success message
    //     AppSnackBar.showSuccessSnackBar(Translate.s.asset_deleted_successfully);
    //   },
    //   isError: (error) {
    //     // Handle error - same pattern as order details (they don't show error message)
    //     AppSnackBar.showSimpleToast(msg: Translate.s.failed_to_delete_asset);
    //   },
    // );

    deleteAssetLoadingObs.setValue(false);
  }
}
