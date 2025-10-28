part of 'create_order_imports.dart';

@RoutePage(name: 'CreateOrderRoute')
class CreateOrderPage extends StatefulWidget {
  const CreateOrderPage({super.key});

  @override
  State<CreateOrderPage> createState() => _CreateOrderPageState();
}

class _CreateOrderPageState extends State<CreateOrderPage> {
  late CreateOrderController controller;

  @override
  void initState() {
    super.initState();
    controller = CreateOrderController();
    controller.initController(context);
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
          'Create Order',
          style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
        ),
        backgroundColor: context.colors.white,
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => context.router.maybePop(),
          child: Icon(
            CupertinoIcons.back,
            color: context.colors.textPrimary,
          ),
        ),
      ),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Customer Information Section
                    CustomerInformationSection(controller: controller),
                    const SizedBox(height: 24),

                    // Payment Method Section
                    PaymentMethodSection(controller: controller),
                    const SizedBox(height: 24),

                    // Delivery Date Section
                    DeliveryDateSection(controller: controller),
                    const SizedBox(height: 24),

                    // Notes Section
                    NotesSection(controller: controller),
                    const SizedBox(height: 24),

                    // Messages Section
                    MessagesSection(controller: controller),
                    const SizedBox(height: 100), // Extra space for floating button
                  ],
                ),
              ),
            ),

            // Create Order Button
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colors.white,
                boxShadow: [
                  BoxShadow(
                    color: context.colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: SafeArea(
                bottom: true,
                top: false,
                child: ObsValueConsumer(
                  observable: controller.isActiveButton,
                  builder: (context, isActive) {
                    return ObsValueConsumer<bool>(
                      observable: controller.isLoadingObs,
                      builder: (context, isLoading) => LoadingButton(
                        title: 'Create Order',
                        onTap: ()=> controller.createOrder(context),
                        borderRadius: 12,
                        margin: EdgeInsets.zero,
                        height: 56,
                        width: double.infinity,
                        titleTextStyle: AppTextStyle.s16_w600(color: context.colors.white),
                        isLoading: isLoading,
                        isEnabled: isActive,
                      ),
                    );
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}