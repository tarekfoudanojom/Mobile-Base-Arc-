import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/global_notification.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/helpers/di.dart';
import 'core/routes/router_imports.dart';
import 'my_app.dart';

void main() async {
  await _init();
  runApp(
    BlocProvider(
      create: (BuildContext context) => DeviceCubit(),
      child: Phoenix(child: const MyApp()),
    ),
  );
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
}
