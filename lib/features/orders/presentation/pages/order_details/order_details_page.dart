part of 'order_details_imports.dart';

@RoutePage(name: 'OrderDetailsRoute')
class OrderDetailsPage extends StatefulWidget {
  final int orderId;

  const OrderDetailsPage({
    super.key,
    required this.orderId,
  });

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  late OrderDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = OrderDetailsController(orderId: widget.orderId);
    controller.initPage(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Order Details',
          style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
        ),
        backgroundColor: context.colors.white,
        leading: CupertinoNavigationBarBackButton(
          color: context.colors.textPrimary,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      child: BaseBlocBuilder<OrderModel>(
        bloc: controller.orderBloc,
        onLoadingWidget: (context) => const OrderDetailsLoadingView(),
        onFailedWidget: (context, error, callback) => OrderDetailsErrorView(error: error, retry: callback),
        onSuccessWidget: (data) => OrderDetailsContent(order: data, controller: controller),
      ),
    );
  }
}
