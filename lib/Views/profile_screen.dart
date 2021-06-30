import 'package:farmer_smart_card_ui/config/palette.dart';
import 'package:farmer_smart_card_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'Profile',
              style: const TextStyle(
                  color: Palette.valuefinBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2
              ),
            ),
            centerTitle: false,
            floating: true,
          ),
          SliverToBoxAdapter(
              child: CardFrontView()
          ),
        ],
      ),
    );
  }
}
