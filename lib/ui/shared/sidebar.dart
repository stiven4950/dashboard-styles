import 'package:dashboard_custom_styles/provider/sidemenu_provider.dart';
import 'package:dashboard_custom_styles/router/router.dart';
import 'package:dashboard_custom_styles/service/navigation_service.dart';
import 'package:dashboard_custom_styles/ui/shared/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  final bool updated;
  final bool isActive;
  const Sidebar({Key? key, required this.updated, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sideMenuProvider = Provider.of<SidemenuProvider>(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 45 : 220,
      height: 700,
      child: ListView(
        padding: const EdgeInsets.only(top: 60),
        children: [
          Text(
            'D${updated ? '' : 'ashboard'}',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserratAlternates(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 50),
          CustomMenuItem(
            text: 'Dashboard',
            isActive:
                sideMenuProvider.currentPage == Flurorouter.dashboardRoute,
            icon: Icons.dashboard,
            isOpenBar: !updated,
            order: 1,
            onPressed: () =>
                NavigationService.replaceTo(Flurorouter.dashboardRoute),
          ),
          CustomMenuItem(
            text: 'All courses',
            isActive: sideMenuProvider.currentPage == Flurorouter.coursesRoute,
            icon: Icons.coronavirus_outlined,
            isOpenBar: !updated,
            order: 2,
            onPressed: () =>
                NavigationService.replaceTo(Flurorouter.coursesRoute),
          ),
          CustomMenuItem(
            text: 'Messages',
            isActive: sideMenuProvider.currentPage == Flurorouter.messagesRoute,
            icon: Icons.send,
            isOpenBar: !updated,
            order: 3,
            onPressed: () =>
                NavigationService.replaceTo(Flurorouter.messagesRoute),
          ),
          CustomMenuItem(
            text: 'Friends',
            isActive: sideMenuProvider.currentPage == Flurorouter.friendsRoute,
            icon: Icons.supervised_user_circle_rounded,
            isOpenBar: !updated,
            order: 4,
            onPressed: () =>
                NavigationService.replaceTo(Flurorouter.friendsRoute),
          ),
          CustomMenuItem(
            text: 'Shedule',
            isActive: sideMenuProvider.currentPage == Flurorouter.sheduleRoute,
            icon: Icons.view_list_rounded,
            isOpenBar: !updated,
            order: 5,
            onPressed: () =>
                NavigationService.replaceTo(Flurorouter.sheduleRoute),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Colors.white,
              thickness: .1,
            ),
          ),
          CustomMenuItem(
            text: 'Settings',
            isActive: sideMenuProvider.currentPage == Flurorouter.settingsRoute,
            icon: Icons.settings,
            isOpenBar: !updated,
            order: 6,
            onPressed: () =>
                NavigationService.replaceTo(Flurorouter.settingsRoute),
          ),
          CustomMenuItem(
            text: 'Exit',
            isActive: false,
            icon: Icons.exit_to_app_outlined,
            isOpenBar: !updated,
            order: 7,
          ),
        ],
      ),
    );
  }
}
