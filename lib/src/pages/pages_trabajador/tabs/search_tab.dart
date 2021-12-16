import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  SearchTab({Key? key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
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
