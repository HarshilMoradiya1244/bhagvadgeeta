import 'package:bhagvatgeeta/screen/home/provider/home_provider.dart';
import 'package:bhagvatgeeta/utils/app_routes.dart';
import 'package:bhagvatgeeta/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: Consumer<HomeProvider>(
        builder: (context, value, child) => MaterialApp(
          theme: value.isLight ? lightTheme : darkTheme,
          debugShowCheckedModeBanner: false,
          routes: screen_routes,
        ),
      ),
    ),
  );
}