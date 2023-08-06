import 'package:flutter/material.dart';

import '../../../Values/ResponsiveApp.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  const InfoText({super.key, required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    ResponsiveApp responsiveApp = ResponsiveApp(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$type: ',
            style: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: responsiveApp.bodyText1)),
        Flexible(
          child: Text(text,
              style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: responsiveApp.bodyText1)),
        )
      ],
    );
  }
}
