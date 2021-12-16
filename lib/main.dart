import 'package:flutter/material.dart';

//paginas
import 'package:aplication_seekmant/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
          accentColor: Color.fromRGBO(255, 140, 0, 1.0),
          primaryColor: Colors.black,
          buttonColor: Color.fromRGBO(0, 122, 255, 1.0),
          disabledColor: Color.fromRGBO(142, 142, 147, 1.2),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
    );
  }
}
