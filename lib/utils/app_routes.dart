import 'package:bhagvatgeeta/screen/adhyay/view/adhyay_screen.dart';
import 'package:bhagvatgeeta/screen/home/view/home_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const HomeScreen(),
  'adhyay': (context) => const AdhyayScreen(),
};