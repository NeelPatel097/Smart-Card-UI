import 'package:farmer_smart_card_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          text: "My Account",
          press: () {},
        ),
        ProfileMenu(
          text: "Referal Code",
          press: () {},
        ),
        ProfileMenu(
          text: "Settings",
          press: () {},
        ),
        ProfileMenu(
          text: "Help Center",
          press: () {},
        ),
        ProfileMenu(
          text: "Log Out",
          press: () {},
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {

  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            color: Color(0xFFF5F6F9),
            onPressed: press,
            child: Row(
              children: [
                Icon(Icons.supervised_user_circle),
                SizedBox(width: 20),
                Expanded(child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
        ),
      );
  }
}
