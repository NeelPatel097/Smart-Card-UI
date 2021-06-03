import 'package:flutter/material.dart';

class CardFrontView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Image.asset('assets/visa.png'),
            Text('0000 1000 9012 3456'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Farmer Name'),
                    Text('Neel Patel'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Date of Birth'),
                    Text('01/12/1972'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
