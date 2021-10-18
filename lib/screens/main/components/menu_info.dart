import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/menu_info.dart';

class MenuInfoView extends StatelessWidget {
  final void Function(MenuInfo) onChanged;

  const MenuInfoView({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        primary: false,
        children: [
          DrawerHeader(
            child: Image.asset('assets/images/logo.png'),
          ),
          Column(
            children: List.generate(
              demoMenuItems.length,
              (index) => DrawerListTile(
                info: demoMenuItems[index],
                onTap: () => onChanged(demoMenuItems[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final MenuInfo info;
  final VoidCallback onTap;

  const DrawerListTile({
    Key? key,
    // For selecting those three line once press 'Command+D'
    required this.info,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        info.svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        info.title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
