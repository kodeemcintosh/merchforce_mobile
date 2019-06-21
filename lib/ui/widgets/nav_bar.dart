
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:merchforce_mobile/blocs/nav_bar_bloc.dart';

class NavBar extends StatefulWidget {
  createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  NavBarBloc _navBarBlock;

  @override
  void initState() {
    super.initState();
    _navBarBlock = NavBarBloc();
  }

  @override
  void dispose() {
    _navBarBlock.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<NavBarItem> (
        stream: _navBarBlock.itemStream,
        initialData: _navBarBlock.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.HOME:
              return _homeArea();
            case NavBarItem.ACCOUNT:
              return _accountArea();
            case NavBarItem.SEARCH:
              return _searchArea();
            case NavBarItem.PURCHASES:
              return _purchasesArea();
          }
        },
      )
    )
  }
}