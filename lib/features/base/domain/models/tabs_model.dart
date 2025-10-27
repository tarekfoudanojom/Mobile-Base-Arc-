class TabsModel {
  final String? activeIcon;
  final String? inActiveIcon;
  final String title;
  final String? url;
  final bool isChat;

  TabsModel({
    this.activeIcon,
    required this.title,
    this.inActiveIcon,
    this.url,
    this.isChat = false,
  });
}
