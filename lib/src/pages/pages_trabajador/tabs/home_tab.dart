import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Image.asset('images/Logo1.1.png', width: 180),
    ));
  }
}
