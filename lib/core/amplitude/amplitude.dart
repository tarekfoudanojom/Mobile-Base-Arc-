import 'package:amplitude_flutter/amplitude.dart';
import 'package:amplitude_flutter/configuration.dart';
import 'package:amplitude_flutter/events/base_event.dart';
import 'package:amplitude_flutter/events/event_options.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AmplitudeClass {
  var amplitude =
      Amplitude(Configuration(apiKey: "460dacf36f4334b2ec60a8ffbb2e2a48"));

  Future<void> init() async {
    await amplitude.isBuilt;
  }

  Future<void> logAndFlushNavigationDetails(
      {String? eventName, EventOptions? options}) async {
    //  if(await amplitude.getUserId() == null) {
    //   return;
    //  }
    await amplitude.track(
        BaseEvent(
          eventName ?? 'NAVIGATION',
          dma: options?.extra.toString(),
          extra: options?.extra,
        ),
        options);

    await amplitude.flush();
  }

  Future<void> logAndFlushActionDetails(
      {String? eventName, EventOptions? options}) async {
    //  if(await amplitude.getUserId() == null) {
    //   return;
    //  }
    await amplitude.track(
        BaseEvent(eventName ?? 'ACTION',
            extra: options?.extra, dma: options?.extra.toString()),
        options);

    await amplitude.flush();
  }


  Future<void> logAndFlushPaymentDetails(
      {String? eventName, EventOptions? options}) async {
    try{
      await amplitude.track(
          BaseEvent(eventName ?? 'PAYMENT', extra: options?.extra, dma: options?.extra.toString(), userId: options?.userId,),
          options);
      await amplitude.flush();
    }catch(e){
      print("Error in amplitude logAndFlushPaymentDetails: $e");
    }

  }
}
