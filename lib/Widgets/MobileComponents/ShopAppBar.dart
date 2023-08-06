import 'package:flutter/material.dart';

import '../../Util/Keys.dart';
import '../../Values/ResponsiveApp.dart';
import '../../Values/StringApp.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double opacity;
  const ShopAppBar(this.opacity, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    ResponsiveApp responsiveApp = ResponsiveApp(context);
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(opacity),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          homeScaffoldKey.currentState!.openDrawer();
        },
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.local_grocery_store_outlined),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {},
        ),
      ],
      title: Text(
        shopStr,
        style: TextStyle(
          color: Colors.blueGrey[100],
          fontSize: responsiveApp.headline6,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          letterSpacing: responsiveApp.letterSpacingHeaderWidth,
        ),
      ),
    );
  }
}
