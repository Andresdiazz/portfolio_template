import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_andres_diaz/constants.dart';
import 'package:portfolio_andres_diaz/screens/home/home_screen.dart';

import 'screens/main/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return CircularProgressIndicator();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData.dark().copyWith(
                  primaryColor: primaryColor,
                  scaffoldBackgroundColor: bgColor,
                  canvasColor: bgColor,
                  textTheme:
                      GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                          .apply(bodyColor: Colors.white)
                          .copyWith(
                              bodyText1: TextStyle(color: bodyTextColor),
                              bodyText2: TextStyle(color: bodyTextColor))),
              home: HomeScreen(),
            );
          }
          return LinearProgressIndicator();
        });
  }
}
