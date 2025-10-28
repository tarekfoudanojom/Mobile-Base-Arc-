import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 5, // Show 5 shimmer cards
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) => _buildShimmerCard(context),
      ),
    );
  }

  Widget _buildShimmerCard(BuildContext context) {
    return Container(
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
          // Header Row Shimmer
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseShimmerWidget(
                      child: Container(
                        width: 120,
                        height: 16,
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

          const SizedBox(height: 12),

          // Order Details Row Shimmer
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseShimmerWidget(
                      child: Container(
                        width: 40,
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
                        width: 60,
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
                        width: 40,
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
                        width: 30,
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
                        width: 40,
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
                        width: 50,
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
            ],
          ),

          const SizedBox(height: 12),

          // Payment Method Shimmer
          BaseShimmerWidget(
            child: Container(
              width: 150,
              height: 12,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Action Buttons Shimmer
          Row(
            children: [
              Expanded(
                child: BaseShimmerWidget(
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      color: context.colors.grey.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              BaseShimmerWidget(
                child: Container(
                  width: 80,
                  height: 36,
                  decoration: BoxDecoration(
                    color: context.colors.grey.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8),
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
