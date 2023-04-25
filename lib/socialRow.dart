import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'animated_button.dart';

class SocialRow extends StatefulWidget {
  const SocialRow({Key? key}) : super(key: key);

  @override
  State<SocialRow> createState() => _SocialRowState();
}

class _SocialRowState extends State<SocialRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedButton(icon: FontAwesomeIcons.facebook, onTap: (){},),
          AnimatedButton(icon: FontAwesomeIcons.instagram, onTap: (){},),
          AnimatedButton(icon: FontAwesomeIcons.twitter, onTap: (){},),
        ],
      ),
    );
  }
}
