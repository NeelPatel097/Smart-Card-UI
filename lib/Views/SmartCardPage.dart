import 'package:farmer_smart_card_ui/widgets/card_front.dart';
import 'package:farmer_smart_card_ui/widgets/card_back.dart';
import 'package:flutter/material.dart';

class SmartCardPage extends StatefulWidget {
  @override
  _SmartCardPageState createState() => _SmartCardPageState();
}

class _SmartCardPageState extends State<SmartCardPage> {

  double _rotationFactor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cards :)'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(3.14 * _rotationFactor),
                origin: Offset(MediaQuery.of(context).size.width / 2, 0),
                child: _rotationFactor < 0.5 ? CardFrontView() : CardBackView()),
            Slider(
              onChanged: (double value) {
                setState(() {
                  _rotationFactor = value;
                });
              },
              value: _rotationFactor,)
          ],
        ),
      ),
    );
  }
}

