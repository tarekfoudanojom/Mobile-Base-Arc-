import 'package:flutter_tdd/features/base/domain/enities/custom_offer_params.dart';

class ServiceParams {
  final int id;
  final int? quantity;
  final String? note;
  final String? description;
  final List<ServiceParams>? services;
  final String? launchDate;
  final List<String>? assets;
  final CustomOfferParams? customOffer;

  ServiceParams(
      {required this.id,
      this.note,
      this.description,
      this.services,
      this.launchDate,
      this.assets,
      this.quantity,
      this.customOffer});

  Map<String, dynamic> toJson() => {
        'id': id,
        if (note != null) 'note': note,
        if (description != null) 'description': description,
        if (services != null && (services ?? []).isNotEmpty)
          'services': services,
        if (launchDate != null) 'launchDate': launchDate,
        if (assets != null) 'assets': assets,
        if (quantity != null) 'quantity': quantity,
        if (customOffer != null && customOffer?.isNotEmpty == true) 'custom_offer': customOffer,
      };
}
