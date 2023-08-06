import 'package:flutter/material.dart';

import '../../Values/ResponsiveApp.dart';
import '../../Values/StringApp.dart';

class ShopDrawer extends StatefulWidget {
  const ShopDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _ShopDrawerState createState() => _ShopDrawerState();
}

class _ShopDrawerState extends State<ShopDrawer> {
  @override
  Widget build(BuildContext context) {
    ResponsiveApp responsiveApp = ResponsiveApp(context);
    return SizedBox(
      width: responsiveApp.drawerWidth,
      child: Drawer(
        child: Container(
            color: Theme.of(context).colorScheme.background,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(nameStr),
                  accountEmail: Text(emailDefaultStr),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background),
                  currentAccountPicture: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/cody.jpg')),
                ),
                getItem(
                  onTap: () {},
                  title: aboutUsStr,
                  icon: Icons.article_outlined,
                ),
                getItem(
                  onTap: () {},
                  title: locationStr,
                  icon: Icons.location_on_outlined,
                ),
                getItem(
                  onTap: () {},
                  title: loginStr,
                  icon: Icons.lock_outline,
                ),
                Expanded(
                    child: Padding(
                  padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      copyrightStr,
                      style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontSize: responsiveApp.bodyText1),
                    ),
                  ),
                ))
              ],
            )),
      ),
    );
  }

  getItem({required String title, required IconData icon, onTap}) {
    return ListTile(
      onTap: onTap,
      title: Text(title, style: const TextStyle(color: Colors.white)),
      leading: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
