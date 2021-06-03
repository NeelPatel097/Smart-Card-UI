import 'package:farmer_smart_card_ui/widgets/card_front.dart';
import 'package:flutter/material.dart';

class SmartCardPage extends StatefulWidget {
  @override
  _SmartCardPageState createState() => _SmartCardPageState();
}

class _SmartCardPageState extends State<SmartCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cards :)'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CardFrontView(),
          ],
        ),
      ),
    );
  }
}

