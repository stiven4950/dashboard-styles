import 'package:fluro/fluro.dart';

import 'package:dashboard_custom_styles/ui/views/no_found_view.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(
    handlerFunc: ((context, parameters) {
      // Provider.of<SidemenuProvider>(context!).setCurrentPageUrl('/404');
      return const NoPageFoundView();
    }),
  );
}
