import 'package:flutter/material.dart';

class SidemenuProvider extends ChangeNotifier {
  bool isActive = false;
  bool updated = false;
  int state = 0;
  String _currentPage = '/';

  String get currentPage => _currentPage;

  void setCurrentPageUrl(String route) {
    _currentPage = route;

    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        notifyListeners();
      },
    );
  }

  Future<void> activateBar() async {
    isActive = !isActive;
    notifyListeners();

    if (state == 0) {
      updated = !updated;
      state = 1;
      notifyListeners();
    } else {
      await Future.delayed(
        const Duration(milliseconds: 300),
        () {
          updated = !updated;
          state = 0;
          notifyListeners();
        },
      );
    }
  }
}
