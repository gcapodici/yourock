import 'package:flutter/material.dart';

import '../../../Values/ResponsiveApp.dart';
import '../../../Values/StringApp.dart';
import 'HeaderButton.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  final double opacity;

  const Header(this.opacity);

  @override
  _HeaderState createState() => _HeaderState();

  // *Este PreferredSizeWidget sirve para darle un tamaño (size) a este widget (Header)
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Container(
      color: Theme.of(context).primaryColor.withOpacity(widget.opacity),
      child: Padding(
        padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              // *Este Text es el titulo GOOD COFFEE
              shopStr,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: responsiveApp.headline6,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                letterSpacing: responsiveApp.letterSpacingHeaderWidth,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: responsiveApp.barSpace1Width),
                  HeaderButton(0, aboutUsStr),
                  SizedBox(width: responsiveApp.barSpace1Width),
                  HeaderButton(1, locationStr),
                ],
              ),
            ),
            // *Sección de iniciar sesión
            HeaderButton(2, loginStr, lineIsVisible: false),
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.local_grocery_store_outlined),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
