import 'package:flutter/material.dart';

import '../../../Values/ResponsiveApp.dart';
import '../../../Values/StringApp.dart';
import 'BottomColum.dart';
import 'InfoText.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveApp responsiveApp = ResponsiveApp(context);

    return Container(
      padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomColumn(
                heading: aboutStr,
                s1: contactUsStr,
                s2: aboutUsStr,
                s3: knowUsStr,
              ),
              BottomColumn(
                heading: helpStr,
                s1: paymentStr,
                s2: cancellationStr,
                s3: fAQStr,
              ),
              BottomColumn(
                heading: socialStr,
                s1: twitterStr,
                s2: facebookStr,
                s3: instagramStr,
              ),
              Container(
                color: Colors.blueGrey, //Theme.of(context).accentColor,
                width: responsiveApp.dividerVtlWidth,
                height: responsiveApp.dividerVtlHeight,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
                      child: InfoText(
                        type: emailStr,
                        text: emailDefaultStr,
                      )),
                  InfoText(
                    type: addressStr,
                    text: addressDefaultStr,
                  )
                ],
              ),
            ],
          ),
          Padding(
              padding: responsiveApp.edgeInsetsApp.vrtSmallEdgeInsets,
              child: Divider(
                color: Colors.blueGrey, //Theme.of(context).accentColor,
                height: responsiveApp.dividerHznHeight,
              )),
          Text(copyrightStr,
              style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: responsiveApp
                      .bodyText1) //Theme.of(context).accentTextTheme.bodyText1,
              ),
        ],
      ),
    );
  }
}
