import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class OrderDetailsLoadingView extends StatelessWidget {
  const OrderDetailsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section Shimmer
            _buildHeaderShimmer(context),
            
            const SizedBox(height: 24),
            
            // Status Section Shimmer
            _buildStatusShimmer(context),
            
            const SizedBox(height: 16),
            
            // Order Information Section Shimmer
            _buildInfoShimmer(context),
            
            const SizedBox(height: 16),
            
            // Actions Section Shimmer
            _buildActionsShimmer(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderShimmer(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order Number Shimmer
          BaseShimmerWidget(
            child: Container(
              width: 200,
              height: 28,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 8),
          
          // Customer Name Shimmer
          BaseShimmerWidget(
            child: Container(
              width: 150,
              height: 20,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 4),
          
          // Customer Email Shimmer
          BaseShimmerWidget(
            child: Container(
              width: 180,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          // Order Date and Total Row Shimmer
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseShimmerWidget(
                      child: Container(
                        width: 80,
                        height: 12,
                        decoration: BoxDecoration(
                          color: context.colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    BaseShimmerWidget(
                      child: Container(
                        width: 100,
                        height: 14,
                        decoration: BoxDecoration(
                          color: context.colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseShimmerWidget(
                      child: Container(
                        width: 90,
                        height: 12,
                        decoration: BoxDecoration(
                          color: context.colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    BaseShimmerWidget(
                      child: Container(
                        width: 120,
                        height: 18,
                        decoration: BoxDecoration(
                          color: context.colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusShimmer(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order Status Title Shimmer
          BaseShimmerWidget(
            child: Container(
              width: 100,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 12),
          
          // Status Chip Shimmer
          BaseShimmerWidget(
            child: Container(
              width: 80,
              height: 24,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoShimmer(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order Information Title Shimmer
          BaseShimmerWidget(
            child: Container(
              width: 140,
              height: 16,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          // Info Rows Shimmer
          ...List.generate(5, (index) => Padding(
            padding: EdgeInsets.only(bottom: index < 4 ? 12 : 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120,
                  child: BaseShimmerWidget(
                    child: Container(
                      width: 80,
                      height: 14,
                      decoration: BoxDecoration(
                        color: context.colors.grey.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: BaseShimmerWidget(
                    child: Container(
                      width: double.infinity,
                      height: 14,
                      decoration: BoxDecoration(
                        color: context.colors.grey.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildActionsShimmer(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Action Buttons Shimmer
          Row(
            children: [
              Expanded(
                child: BaseShimmerWidget(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: context.colors.grey.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: BaseShimmerWidget(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: context.colors.grey.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
