import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/socialRow.dart';

import 'linkButton.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(50),
      width: MediaQuery.of(context).size.width < 900
          ? MediaQuery.of(context).size.width * 0.9
          : MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Image.asset("assets/profile_pic.jpg"),
          ),
          Text(
            'Touseef Khattak',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
          ),
          Text(
            'I am a developer and I am looking for dev roles across pakistan or usa',
            textAlign: TextAlign.center,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text("Full stack developer"),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
              Chip(
                label: Text("App developer"),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
              Divider(),
              linkButton(
                title: 'Github',
                subtitle: 'Khattak11',
                icon: FontAwesomeIcons.githubAlt,
                onTap: () {},
              ),
              linkButton(
                title: 'Gitlab',
                subtitle: 'Touseef khattak',
                icon: FontAwesomeIcons.gitlab,
                onTap: () {},
              ),
              linkButton(
                title: 'Linkdin',
                subtitle: 'Touseef khattak',
                icon: FontAwesomeIcons.linkedin,
                onTap: () {},
              ),
            ],
          ),
          SocialRow()
        ],
      ),
    );
  }
}
