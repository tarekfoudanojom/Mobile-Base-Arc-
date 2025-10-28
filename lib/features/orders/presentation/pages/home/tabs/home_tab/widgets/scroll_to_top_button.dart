import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/home_tab_controller.dart';

class ScrollToTopButton extends StatelessWidget {
  final HomeTabController controller;

  const ScrollToTopButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<bool>(
      observable: controller.showScrollUpButtonObs,
      builder: (context, show) {
        if (!show) return const SizedBox.shrink();
        
        return Positioned(
          bottom: 20,
          right: 20,
          child: CupertinoButton(
            padding: const EdgeInsets.all(12),
            color: context.colors.primary,
            onPressed: controller.scrollToTop,
            child: const Icon(CupertinoIcons.arrow_up, color: CupertinoColors.white),
          ),
        );
      },
    );
  }
}
