import 'package:flutter/material.dart' as flutter;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:task/locator.dart';
import 'package:task/routing/route_names.dart';
import 'package:task/routing/router.dart';
import 'package:task/services/navigation_service.dart';
import 'package:task/widgets/centered_view/centered_view.dart';
import 'package:task/widgets/navigation_bar/navigation_bar.dart';
import 'package:task/widgets/navigation_drawer/navigation_drawer.dart'
    as custom;

class LayoutTemplate extends flutter.StatelessWidget {
  static const String homeRoute = HomeRoute; // Define a constant string

  const LayoutTemplate({flutter.Key? key}) : super(key: key);

  @override
  flutter.Widget build(flutter.BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => flutter.Scaffold(
        drawer: sizingInformation.isMobile ? custom.NavigationDrawer() : null,
        backgroundColor: flutter.Colors.white,
        body: CenteredView(
          child: flutter.Column(
            children: <flutter.Widget>[
              NavigationBar(),
              flutter.Expanded(
                child: flutter.Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute, // Use the constant string
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
