part of 'more_widgets_imports.dart';

class ClientAccountsBottomSheetWidget extends StatefulWidget {
  final Function(MemberClientDelegationModel) onAccountSelected;

  const ClientAccountsBottomSheetWidget({super.key, required this.onAccountSelected});

  @override
  State<ClientAccountsBottomSheetWidget> createState() => _ClientAccountsBottomSheetWidgetState();
}

class _ClientAccountsBottomSheetWidgetState extends State<ClientAccountsBottomSheetWidget> {
  @override
  void initState() {
    super.initState();
    MemberClientService.instance.loadMemberClients();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        var profile = context.watch<ProfileCubit>().state.model;
        return Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              // Handle bar
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(top: 8, bottom: 16),
                decoration: BoxDecoration(
                  color: context.colors.grey.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),

              // Header with title and close button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const SizedBox(width: 24), // Space for close button alignment
                    Expanded(
                      child: Text(
                        Translate.s.accounts,
                        style: AppTextStyle.s20_w600(
                          color: context.colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: context.colors.grey.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.close,
                          size: 20,
                          color: context.colors.black.withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Accounts List
              Expanded(
                child: BaseBlocBuilder<List<MemberClientDelegationModel>>(
                  bloc: MemberClientService.instance.clientsBloc,
                  onSuccessWidget: (clients) {
                    if (clients.isEmpty) {
                      return Center(
                        child: Text(
                          Translate.s.no_accounts,
                          style: AppTextStyle.s16_w400(
                            color: context.colors.grey,
                          ),
                        ),
                      );
                    }
                    return ListView.builder(
                      controller: scrollController,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: clients.length,
                      itemBuilder: (context, index) {
                        final client = clients[index];
                        return _MemberClientAccountItem(
                          client: client,
                          isSelected: client.principalProfileId == profile?.id,
                          onTap: () {
                            widget.onAccountSelected(client);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    );
                  },
                  onLoadingWidget: (context) => ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: 6, // Show 6 shimmer items
                    itemBuilder: (context, index) => const _ShimmerClientAccountItem(),
                  ),
                  onFailedWidget: (context, error, callback) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Failed to load accounts',
                          style: AppTextStyle.s16_w400(
                            color: context.colors.grey,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: callback,
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

class _MemberClientAccountItem extends StatelessWidget {
  final MemberClientDelegationModel client;
  final bool isSelected;
  final VoidCallback onTap;

  const _MemberClientAccountItem({
    required this.client,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            // Logo
            CachedImage(
              url: client.photo ?? "",
              width: 54,
              height: 54,
              borderColor: context.colors.greyWhite,
              borderRadius: BorderRadius.circular(5),
              errorPlaceholderPadding: const EdgeInsets.all(4),
              placeHolder: SvgPicture.asset(Res.profileIcon),
            ),

            const SizedBox(width: 16),

            // Content
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 56,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        MemberClientService.instance.getClientFullName(client),
                                        style: AppTextStyle.s16_w600(
                                          color: context.colors.black,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Gaps.hGap5,
                                    if(client.delegateProfileId == client.principalProfileId)
                                    Text(
                                      Translate.s.basic_account,
                                      style: AppTextStyle.s14_w400(
                                        color: context.colors.ashGray2,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              // Selection indicator
                              if (isSelected)
                                Container(
                                  width: 18,
                                  height: 18,
                                  margin: const EdgeInsets.only(left: 8),
                                  decoration: BoxDecoration(
                                    color: context.colors.appColorBlue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    size: 14,
                                    color: context.colors.white,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: context.colors.greyWhite,
                    height: 5,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShimmerClientAccountItem extends StatelessWidget {
  const _ShimmerClientAccountItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
      child: Row(
        children: [
          // Logo shimmer
          const CircleShimmer(
            radius: 54,
            borderRadius: 5,
          ),

          const SizedBox(width: 16),

          // Content shimmer
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 56,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Name shimmer
                            const TextShimmer(
                              lineWidthPercent: 0.6,
                              lineHeightPercent: 16,
                            ),
                            // Selection indicator shimmer
                            const CircleShimmer(
                              radius: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: context.colors.greyWhite,
                  height: 5,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
