import "package:first_app/pages/home_page.dart";
import "package:first_app/pages/login_page.dart";
import "package:first_app/tutorial/scaffold_tuto_page.dart";
import "package:first_app/utils/routes.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: GoogleFonts.lato().fontFamily,
          //
      ),

      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      // initialRoute: MyRoutes.scaffoldRoutes,
      routes: {
        "/" :  (context) => const ScaffoldPage(),
        MyRoutes.homeRoutes :  (context) => HomePage(),
        MyRoutes.loginRoutes : (context) => const LoginPage()
      },
    );
  }
}
