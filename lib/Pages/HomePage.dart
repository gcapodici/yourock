import 'package:flutter/material.dart';
import 'package:goodcoffee/Widgets/WebComponents/Body/SectionList.dart';
import 'package:goodcoffee/Widgets/WebComponents/Header/Header.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../Util/Keys.dart';
import '../Util/SizingInfo.dart';
import '../Values/ResponsiveApp.dart';
import '../Widgets/Components/Carousel.dart';
import '../Widgets/MobileComponents/MenuTap.dart';
import '../Widgets/MobileComponents/ShopDrawer.dart';
import '../Widgets/MobileComponents/ShopAppBar.dart';
import '../Widgets/WebComponents/Footer/Footer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  late AutoScrollController autoScrollController;
  bool _isVisible = false;
  late ResponsiveApp responsiveApp;

  _scrollListener() {
    setState(() {
      _scrollPosition = autoScrollController.position.pixels;
    });
  }

  @override
  void initState() {
    autoScrollController = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);

    autoScrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    _opacity = _scrollPosition < responsiveApp.opacityHeight
        ? _scrollPosition / responsiveApp.opacityHeight
        : 1;

    _isVisible = _scrollPosition >= responsiveApp.menuHeight;
    return Scaffold(
        key: homeScaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.background,
        floatingActionButton: Visibility(
          visible: _isVisible,
          child: FloatingActionButton(
            onPressed: () => {autoScrollController.scrollToIndex(0)},
            child: const Icon(Icons.arrow_upward),
          ),
        ),
        appBar: isMobileAndTablet(context)
            ? ShopAppBar(_opacity)
            : Header(_opacity),
        drawer: const ShopDrawer(),
        body: ListView(controller: autoScrollController, children: [
          const Carousel(),
          isMobileAndTablet(context)
              ? MenuTap()
              : SectionListView(autoScrollController),
          isMobileAndTablet(context) ? const SizedBox.shrink() : const Footer()
        ]));
  }
}
