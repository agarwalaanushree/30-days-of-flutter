import 'package:flutter/material.dart';
import 'package:flutter_catalog1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
       themeMode: ThemeMode.light,
       theme:ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),

       ),
       darkTheme: ThemeData(
        brightness: Brightness.dark,
       ),
       routes:{
        "/":((context) => const LoginPage()),
        "/home":(context)=>const HomePage(),
        "/login":(context) => const LoginPage(),
       } ,       
    );
  }
}
