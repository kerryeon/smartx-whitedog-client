class MenuInfo {
  final String title, svgSrc;

  const MenuInfo({
    required this.title,
    required this.svgSrc,
  });
}

List<MenuInfo> demoMenuItems = const [
  MenuInfo(
    title: 'Dashboard',
    svgSrc: 'assets/icons/menu_dashbord.svg',
  ),
  MenuInfo(
    title: 'Transaction',
    svgSrc: 'assets/icons/menu_tran.svg',
  ),
  MenuInfo(
    title: 'Task',
    svgSrc: 'assets/icons/menu_task.svg',
  ),
  MenuInfo(
    title: 'Documents',
    svgSrc: 'assets/icons/menu_doc.svg',
  ),
  MenuInfo(
    title: 'Store',
    svgSrc: 'assets/icons/menu_store.svg',
  ),
  MenuInfo(
    title: 'Notification',
    svgSrc: 'assets/icons/menu_notification.svg',
  ),
  MenuInfo(
    title: 'Profile',
    svgSrc: 'assets/icons/menu_profile.svg',
  ),
  MenuInfo(
    title: 'Settings',
    svgSrc: 'assets/icons/menu_setting.svg',
  ),
];
