
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:merchforce_mobile/ui/screens/home_views/search_view.dart';
import 'package:merchforce_mobile/ui/screens/home_views/featured_view.dart';
import 'package:merchforce_mobile/ui/screens/home_views/account_view.dart';
import 'package:merchforce_mobile/ui/screens/home_views/purchases_view.dart';
import 'package:merchforce_mobile/ui/widgets/nav_bar.dart';
import 'package:merchforce_mobile/blocs/nav_bar_bloc.dart';




class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      appBar: StreamBuilder(
        stream: _navBarBlock.itemStream,
        initialData: _navBarBlock.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.HOME:
              return FeaturedView();
            case NavBarItem.ACCOUNT:
              return AccountView();
            case NavBarItem.SEARCH:
              return SearchView();
            case NavBarItem.PURCHASES:
              return PurchasesView();
          }
        },
      ),
      body: StreamBuilder<NavBarItem> (
        stream: _navBarBlock.itemStream,
        initialData: _navBarBlock.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.HOME:
              return FeaturedView();
            case NavBarItem.ACCOUNT:
              return AccountView();
            case NavBarItem.SEARCH:
              return SearchView();
            case NavBarItem.PURCHASES:
              return PurchasesView();
          }
        },
      ),
      bottomNavigationBar: StreamBuilder(
        stream: _navBarBlock.itemStream,
        initialData: _navBarBlock.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return BottomNavigationBar(
            fixedColor: Colors.blueAccent,
            currentIndex: snapshot.data.index,
            onTap: _navBarBlock.selectTab,
            items: [
              BottomNavigationBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                title: Text('Account'),
                icon: Icon(Icons.person)
              ),
              BottomNavigationBarItem(
                title: Text('Search'),
                icon: Icon(Icons.search)
              ),
              BottomNavigationBarItem(
                title: Text('Purchases'),
                icon: Icon(Icons.history)
              ),
            ]
          )
        },
      )
    );
  }
}
