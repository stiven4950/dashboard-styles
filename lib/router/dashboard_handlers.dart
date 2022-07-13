import 'package:dashboard_custom_styles/provider/sidemenu_provider.dart';
import 'package:dashboard_custom_styles/router/router.dart';
import 'package:fluro/fluro.dart';

import 'package:dashboard_custom_styles/ui/views/courses_view.dart';
import 'package:dashboard_custom_styles/ui/views/dashboard_view.dart';
import 'package:dashboard_custom_styles/ui/views/friends_route.dart';
import 'package:dashboard_custom_styles/ui/views/messages_view.dart';
import 'package:dashboard_custom_styles/ui/views/settings_view.dart';
import 'package:dashboard_custom_styles/ui/views/shedule_view.dart';
import 'package:provider/provider.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(
    handlerFunc: (context, parameters) {
      Provider.of<SidemenuProvider>(context!)
          .setCurrentPageUrl(Flurorouter.dashboardRoute);
      return const DashboardView();
    },
  );
  static Handler courses = Handler(
    handlerFunc: (context, parameters) {
      Provider.of<SidemenuProvider>(context!)
          .setCurrentPageUrl(Flurorouter.coursesRoute);
      return const CoursesView();
    },
  );
  static Handler messages = Handler(
    handlerFunc: (context, parameters) {
      Provider.of<SidemenuProvider>(context!)
          .setCurrentPageUrl(Flurorouter.messagesRoute);
      return const MessagesView();
    },
  );
  static Handler friends = Handler(
    handlerFunc: (context, parameters) {
      Provider.of<SidemenuProvider>(context!)
          .setCurrentPageUrl(Flurorouter.friendsRoute);
      return const FriendsView();
    },
  );
  static Handler shedule = Handler(
    handlerFunc: (context, parameters) {
      Provider.of<SidemenuProvider>(context!)
          .setCurrentPageUrl(Flurorouter.sheduleRoute);
      return const SheduleView();
    },
  );
  static Handler settings = Handler(
    handlerFunc: (context, parameters) {
      Provider.of<SidemenuProvider>(context!)
          .setCurrentPageUrl(Flurorouter.settingsRoute);
      return const SettingsView();
    },
  );
}
