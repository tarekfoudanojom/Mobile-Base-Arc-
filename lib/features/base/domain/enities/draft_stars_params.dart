import 'package:flutter_tdd/features/base/domain/enities/custom_offer_params.dart';

class DraftStarsParams {
  final List<DraftStarItem> stars;
  final bool showLoadingDialog;

  DraftStarsParams({
    required this.stars,
    this.showLoadingDialog = true,
  });

  Map<String, dynamic> toJson() => {
        'stars': stars.map((e) => e.toJson()).toList(),
      };
}

class DraftStarItem {
  final int id;
  final List<int>? campaigns;
  final String? launchDate;
  final String? note;
  final List<DraftStarService>? services;
  final List<String>? assets;
  final CustomOfferParams? customOffer;

  DraftStarItem(
      {required this.id,
      this.campaigns,
      this.launchDate,
      this.note,
      this.services,
      this.assets,
      this.customOffer});

  Map<String, dynamic> toJson() => {
        'id': id,
        if (campaigns != null) 'campaigns': campaigns,
        if (launchDate != null) 'launchDate': launchDate,
        if (note != null) 'note': note,
        if (services != null)
          'services': services?.map((e) => e.toJson()).toList(),
        if (assets != null) 'assets': assets,
        if (customOffer != null && customOffer?.isNotEmpty == true) 'custom_offer': customOffer,
      };
}

class DraftStarService {
  final int serviceId;
  final int? quantity;
  final String? description;

  DraftStarService({
    required this.serviceId,
    this.quantity,
    this.description,
  });

  Map<String, dynamic> toJson() => {
        'service_id': serviceId,
        if (quantity != null) 'quantity': quantity,
        if (description != null) 'description': description,
      };
}
