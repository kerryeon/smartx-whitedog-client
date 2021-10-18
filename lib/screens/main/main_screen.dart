import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartx_whitedog_client/models/menu_info.dart';

import '../../controllers/menu_controller.dart';
import '../../responsive.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/menu_info.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MainScreen> {
  MenuInfo currentMenu = demoMenuItems[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: MenuInfoView(
        onChanged: onChangedMenu,
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: MenuInfoView(
                  onChanged: onChangedMenu,
                ),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }

  void onChangedMenu(MenuInfo info) {
    setState(() {
      currentMenu = info;
    });
  }
}
