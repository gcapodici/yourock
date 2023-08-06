import 'package:flutter/material.dart';

import '../../../Values/ResponsiveApp.dart';

class HeaderButton extends StatefulWidget {
  String title;
  int index;
  bool lineIsVisible;

  HeaderButton(this.index, this.title, {super.key, this.lineIsVisible = true});

  @override
  State<StatefulWidget> createState() => _HeaderButtonState(index);
}

class _HeaderButtonState extends State<HeaderButton> {
  int index;
  final List _isHovering = [
    false,
    false,
    false,
  ];

  _HeaderButtonState(this.index);

  @override
  Widget build(BuildContext context) {
    ResponsiveApp responsiveApp = ResponsiveApp(context);
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? _isHovering[index] = true : _isHovering[index] = false;
        });
      },
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: _isHovering[index] ? Colors.white : Colors.white70,
            ),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: widget.lineIsVisible
                ? _isHovering[index]
                : widget.lineIsVisible,
            child: Container(
              height: responsiveApp.lineHznButtonHeight,
              width: responsiveApp.lineHznButtonWidth,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
