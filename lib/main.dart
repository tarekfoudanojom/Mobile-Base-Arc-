import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/amplitude/amplitude.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/global_notification.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/helpers/di.dart';
import 'core/routes/router_imports.dart';
import 'my_app.dart';

void main() async {

  if(kDebugMode){
   await _init();
   runApp(
     BlocProvider(
       create: (BuildContext context) => DeviceCubit(),
       child: Phoenix(child: const MyApp()),
     ),
   );
  }else{
    runZonedGuarded(
          () async {

        await _init();

        await SentryFlutter.init(
              (options) {
            options.dsn = 'https://4ee870cd970b2be11a80c3f3604f915a@o4509938923339776.ingest.us.sentry.io/4509944905793536';
            options.sendDefaultPii = true;
          },
          appRunner: () {
            runApp(
              SentryWidget(
                child: BlocProvider(
                  create: (BuildContext context) => DeviceCubit(),
                  child: Phoenix(child: const MyApp()),
                ),
              ),
            );
          },
        );
      },
          (exception, stackTrace) async {
        await Sentry.captureException(exception, stackTrace: stackTrace);
      },
    );
  }
}

Future _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  var pref = await SharedPreferences.getInstance();
  getIt.registerSingleton(pref);
  getIt.registerSingleton(AppRouter());
  await configureDependencies();
  getIt<GlobalNotification>().setupNotification();
  getIt<AmplitudeClass>().init();
}