import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileListItems extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItems({
    Key key,
    this.icon,
    this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0 * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0 * 4,
      ).copyWith(
        bottom: 10.0 * 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0 * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0 * 3),
        color: Colors.white54,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 10.0 * 2.5,
          ),
          SizedBox(width: 10.0 * 1.5),
          Text(
            text,
          ),
          Spacer(),
          if (hasNavigation)
            Icon(
              LineAwesomeIcons.angle_right,
              size: 10.0 * 2.5,
            ),
        ],
      ),
    );
  }
}
