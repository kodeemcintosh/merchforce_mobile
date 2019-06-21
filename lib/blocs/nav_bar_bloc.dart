
import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:merchforce_mobile/models/account.dart';

enum NavBarItem {
  HOME,
  ACCOUNT,
  SEARCH,
  PURCHASES
}

class NavBarBloc {
  // final _repository = Repository();
  final StreamController<NavBarItem> _navBarController = StreamController<NavBarItem>.broadcast();
  final NavBarItem defaultItem = NavBarItem.HOME;

  void selectTab(int tabIndex) {
    switch(tabIndex) {
      case 0:
        _navBarController.sink.add(NavBarItem.HOME);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.ACCOUNT);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.SEARCH);
        break;
      case 3:
        _navBarController.sink.add(NavBarItem.PURCHASES);
        break;
    }
  }
  close() {
    _navBarController?.close();
  }
}