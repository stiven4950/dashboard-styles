import 'package:dashboard_custom_styles/provider/sidemenu_provider.dart';
import 'package:dashboard_custom_styles/ui/shared/navbar.dart';
import 'package:dashboard_custom_styles/ui/shared/sidebar.dart';
import 'package:dashboard_custom_styles/ui/shared/widgets/hide_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardLayout extends StatefulWidget {
  final Widget child;
  const DashboardLayout({Key? key, required this.child}) : super(key: key);

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sideMenuProvider = Provider.of<SidemenuProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Navbar(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width * .95,
              height: 700,
              decoration: BoxDecoration(
                color: const Color(0xff5955B3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Sidebar(
                      updated: sideMenuProvider.updated,
                      isActive: sideMenuProvider.isActive),
                  HideButton(
                    isActive: sideMenuProvider.isActive,
                    onTap: () async => sideMenuProvider.activateBar(),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: widget.child,
                    ),
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
