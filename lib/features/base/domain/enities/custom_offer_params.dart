import '../models/send_custom_offer.dart';

enum PricingModel {
  bundled,
  itemized,
}

class CustomOfferParams {
  List<SendCustomOfferModel> customOfferService;
  List<CustomOfferModel> customOfferOther;
  OfferConfig offerConfig;

  CustomOfferParams({
    required this.customOfferService,
    required this.customOfferOther,
    required this.offerConfig,
  });

  Map<String, dynamic> toJson() {
    // final Map<String, dynamic> data = {};

    final Map<String, dynamic> customOffer = {};

    if (customOfferService.isNotEmpty) {
      customOffer['available_services'] = customOfferService.map((e) {
        if(offerConfig.pricingModel == PricingModel.bundled){
          return e.toJsonWithNewPrice(offerConfig.bundle?.price ?? 0);
        }
        return e.toJson();
      }).toList();
    }

    if (customOfferOther.isNotEmpty) {
      customOffer['requested_services'] = customOfferOther.map((e) {
        if(offerConfig.pricingModel == PricingModel.bundled){
          return e.toJsonWithNewPrice(offerConfig.bundle?.price ?? 0);
        }
        return e.toJson();
      }).toList();
    }

    customOffer['offer_config'] = offerConfig.toJson();

    return customOffer;
  }

  bool get isNotEmpty {
    return customOfferService.isNotEmpty || customOfferOther.isNotEmpty;
  }

}

class OfferConfig {
  PricingModel pricingModel; // bundled | itemized
  Bundle? bundle; // Only used when bundled

  OfferConfig({
    required this.pricingModel,
    this.bundle,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['pricing_model'] = pricingModel.name;

    if (bundle != null) {
      data['bundle'] = bundle!.toJson();
    }

    return data;
  }
}

class Bundle {
  double price;
  String? title;
  String? notes;

  Bundle({
    required this.price,
    this.title,
    this.notes,
  });

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'title': title ?? "",
      'notes': notes ?? "",
    };
  }
}
