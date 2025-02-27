import 'package:emart_app/Views/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'consts/consts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            // to set appBar icons color
            iconTheme: IconThemeData(
              color: darkFontGrey,
            ),
            //set elevation to 0
            elevation: 0.0,
            backgroundColor: Colors.white),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
