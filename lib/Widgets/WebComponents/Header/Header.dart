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
              navbarName,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeaderButton(0, navbarHome),
                  SizedBox(width: responsiveApp.barSpace1Width),
                  HeaderButton(1, navbarProducts),
                  SizedBox(width: responsiveApp.barSpace1Width),
                  HeaderButton(2, navbarAboutUs),
                  SizedBox(width: responsiveApp.barSpace1Width),
                  HeaderButton(3, navbarContact),
                ],
              ),
            ),
            // *Sección de iniciar sesión - Acá pondría las redes tal vez
            // HeaderButton(2, loginStr, lineIsVisible: false),
            // IconButton(
            //   padding: EdgeInsets.zero,
            //   icon: const Icon(Icons.local_grocery_store_outlined),
            //   splashColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
            //   onPressed: () {},
            // )
          ],
        ),
      ),
    );
  }
}
