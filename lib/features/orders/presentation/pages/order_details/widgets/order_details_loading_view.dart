import 'package:flutter/cupertino.dart';

class OrderDetailsLoadingView extends StatelessWidget {
  const OrderDetailsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(radius: 20),
    );
  }
}
