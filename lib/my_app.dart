import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';
import 'package:flutter_tdd/core/theme/themes/app_dark_theme.dart';
import 'package:flutter_tdd/core/theme/themes/app_light_theme.dart';
import 'package:flutter_tdd/core/widgets/network_layer/network_layer_widget.dart';
import 'package:overlay_support/overlay_support.dart';
import 'core/helpers/general_providers.dart';
import 'generated/l10n.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // getIt<FirebaseAnalyticsHelper>().analytics.setConsent(
    //       adStorageConsentGranted: false,
    //       analyticsStorageConsentGranted: true,
    //     );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: GeneralProviders.instance.providers(context),
      child: BlocBuilder<DeviceCubit, DeviceState>(
        builder: (context, state) {
          return AdaptiveTheme(
              light: AppLightTheme(language: state.model.locale.languageCode)
                  .theme,
              dark:
                  AppDarkTheme(language: state.model.locale.languageCode).theme,
              initial: state.model.themeMode,
              builder: (theme, darkTheme) {
                return OverlaySupport(
                  child: MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    title: "Brand",
                    darkTheme: darkTheme,
                    theme: theme,
                    supportedLocales: S.delegate.supportedLocales,
                    locale: state.model.locale,
                    // These delegates make sure that the localization data for the proper language is loaded
                    localizationsDelegates:  const [
                      // 1
                      S.delegate,
                      // 2
                      DefaultCupertinoLocalizations.delegate,
                      // Built-in localization of basic text for Material widgets
                      GlobalMaterialLocalizations.delegate,
                      // Built-in localization for text direction LTR/RTL
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,

                    ],
                    routerDelegate:
                        getIt.get<AppRouter>().delegate(navigatorObservers: () {
                      return [
                        // ScreenLogger(),
                        // FirebaseAnalyticsObserver(
                        //     analytics:
                        //         getIt<FirebaseAnalyticsHelper>().analytics)
                      ];
                    }),
                    routeInformationParser:
                        getIt.get<AppRouter>().defaultRouteParser(),
                    builder: EasyLoading.init(builder: (ctx, child) {
                      ScreenUtil.init(ctx);
                      return NetworkLayerWidget(
                        isNetworkConnected: state.model.isNetworkConnected,
                        child: MediaQuery(
                          data: _getMediaQueryData(ctx, state.model.locale),
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context)
                                .requestFocus(FocusNode()),
                            child: child!,
                          ),
                        ),
                      );
                    }),
                  ),
                );
              });
        },
      ),
    );
  }

  MediaQueryData _getMediaQueryData(BuildContext ctx, Locale locale) {
    if (locale.languageCode == ApplicationConstants.langAR && Platform.isIOS) {
      return MediaQuery.of(ctx).copyWith(
        boldText: false,
        textScaler: const TextScaler.linear(1.1),
      );
    }
    return MediaQuery.of(ctx).copyWith(
      boldText: false,
      textScaler: const TextScaler.linear(1.0),
    );
  }
}
