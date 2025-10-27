import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class StatusAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const StatusAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.black,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(10);
}
