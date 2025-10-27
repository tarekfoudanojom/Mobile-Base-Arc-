import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/service_filter_cubit/service_filter_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';

class GeneralProviders {
  GeneralProviders._();

  static GeneralProviders instance = GeneralProviders._();

  List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => AuthCubit(),
        ),
        BlocProvider<DeviceCubit>(
          create: (BuildContext context) => DeviceCubit(),
        ),
        BlocProvider<UserCubit>(
          create: (BuildContext context) => UserCubit(),
        ),
        BlocProvider<ProfileCubit>(
          create: (BuildContext context) => ProfileCubit(),
        ),
        BlocProvider<ServiceFilterCubit>(
          create: (BuildContext context) => ServiceFilterCubit(),
        ),
      ];
}
