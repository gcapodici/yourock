import 'package:flutter/material.dart';

import '../../Model/Manu.dart';
import '../../Model/Product.dart';
import '../../Values/ResponsiveApp.dart';
import '../Components/ProductListView.dart';

class MenuTap extends StatefulWidget {
  const MenuTap({super.key});

  @override
  State<StatefulWidget> createState() => MenuTapState();
}

class MenuTapState extends State<MenuTap> with TickerProviderStateMixin {
  late TabController _controller;
  late ResponsiveApp responsiveApp;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: menu.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return SizedBox(
      height: responsiveApp.menuTabContainerHeight,
      child: Padding(
        padding: responsiveApp.edgeInsetsApp.allLargeEdgeInsets,
        child: Column(
          children: <Widget>[
            TabBar(
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: _controller,
                tabs: List.generate(
                    menu.length,
                    (index) => createTab(
                        index, menu[index].title, menu[index].image, context))),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  ProductListView(coffeesList),
                  ProductListView(drinksList),
                  ProductListView(cakesList),
                  ProductListView(sandwichesList),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  createTab(int index, String text, String image, BuildContext context) {
    return Tab(
      text: text,
      icon: Image.asset(
        image,
        color: _selectedIndex == index
            ? Theme.of(context).iconTheme.color
            : Theme.of(context).unselectedWidgetColor,
        fit: BoxFit.fill,
        height: responsiveApp.tabImageHeight,
      ),
    );
  }
}
