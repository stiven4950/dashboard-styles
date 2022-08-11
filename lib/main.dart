import 'package:dashboard_custom_styles/provider/sidemenu_provider.dart';
import 'package:dashboard_custom_styles/router/router.dart';
import 'package:dashboard_custom_styles/service/local_storage.dart';
import 'package:dashboard_custom_styles/ui/layout/dashboard_layout.dart';
import 'package:flutter/material.dart';

import 'package:dashboard_custom_styles/service/navigation_service.dart';
import 'package:provider/provider.dart';

void main() async {
  await LocalStorage.configurePreferences();
  Flurorouter.configureRoute();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SidemenuProvider(), lazy: false),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dashboard Custom Styles',
        initialRoute: '/',
        navigatorKey: NavigationService.navigatorkey,
        onGenerateRoute: Flurorouter.router.generator,
        theme: ThemeData.light().copyWith(
          scrollbarTheme: const ScrollbarThemeData().copyWith(
            thumbColor:
                MaterialStateProperty.all(Colors.indigo.withOpacity(0.5)),
          ),
        ),
        builder: (context, child) {
          return Overlay(
            initialEntries: [
              OverlayEntry(
                builder: (_) => DashboardLayout(child: child!),
              )
            ],
          );
        },
      ),
    );
  }
}
