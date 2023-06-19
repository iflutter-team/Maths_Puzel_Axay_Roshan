import 'package:demo_math_puzzel/data_screen/data_screen.dart';
import 'package:demo_math_puzzel/winner_screen/winner_widget.dart';
import 'package:flutter/material.dart';

class WinPage extends StatefulWidget {
  @override
  _WinPageState createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {
  @override
  Widget build(BuildContext context) {
    DataPage(context);
    return Scaffold(
      body: SafeArea(
        child: winnerPageWidget(),
      ),
    );
  }
}
