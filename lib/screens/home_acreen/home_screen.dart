import 'package:flutter/material.dart';
import 'package:promina_task/screens/home_acreen/mobile_home_body.dart';
import 'package:promina_task/screens/home_acreen/tablet_home_body.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/image/bg.jpg'))),
      child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.transparent,
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return const MobileHomeBody();
              } else {
                return const TabletHomeBody();
              }
            },
          )),
    );
  }
}
