import 'package:dashboard_custom_styles/router/dashboard_handlers.dart';
import 'package:dashboard_custom_styles/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final router = FluroRouter();

  // Dasboard
  static String dashboardRoute = '/';
  static String coursesRoute = '/dashboard/all-courses';
  static String messagesRoute = '/dashboard/messages';
  static String friendsRoute = '/dashboard/friends';
  static String sheduleRoute = '/dashboard/shedule';
  static String settingsRoute = '/dashboard/settings';

  static void configureRoute() {
    router.define(
      dashboardRoute,
      handler: DashboardHandlers.dashboard,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      coursesRoute,
      handler: DashboardHandlers.courses,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      messagesRoute,
      handler: DashboardHandlers.messages,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      friendsRoute,
      handler: DashboardHandlers.friends,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      sheduleRoute,
      handler: DashboardHandlers.shedule,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      settingsRoute,
      handler: DashboardHandlers.settings,
      transitionType: TransitionType.fadeIn,
    );
    // 404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
