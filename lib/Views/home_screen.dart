import 'package:farmer_smart_card_ui/config/palette.dart';
import 'package:farmer_smart_card_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              title: Text(
                  'Valuefin',
                  style: const TextStyle(
                    color: Palette.valuefinBlue,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.2
                  ),
              ),
              centerTitle: false,
              floating: true,
              actions: [
                CircleButton(
                    icon: Icons.search,
                    iconSize: 30.0,
                    onPressed: () => print('Search'),
                ),
                CircleButton(
                  icon: MdiIcons.message,
                  iconSize: 30.0,
                  onPressed: () => print('Messenger'),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: CardFrontView()
            ),
          ],
        ),
    );
  }
}
