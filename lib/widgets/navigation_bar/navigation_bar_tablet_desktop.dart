import 'package:flutter/material.dart';
import 'package:task/routing/route_names.dart';
import 'package:task/widgets/navigation_bar/navbar_logo.dart';
import 'package:task/widgets/navigation_bar/navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Episodes',EpisodesRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About',AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}