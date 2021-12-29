import 'package:flutter/material.dart';

import 'constants.dart';

class IconContant extends StatelessWidget {
  final String text;
  final IconData icon;

  IconContant({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: lableTextStyle,
        ),
      ],
    );
  }
}

class RoundIconBottom extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconBottom({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints(minWidth: 56, minHeight: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
