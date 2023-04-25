import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/about.dart';

class linkButton extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function onTap;

  const linkButton({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  State<linkButton> createState() => _linkButtonState();
}

class _linkButtonState extends State<linkButton> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;

    return InkWell(
      onTap: () {

      },
      onHover: (val) {
        setState(() {
          isHover == val;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
            color: isHover == true ? Colors.grey : Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isHover == false ? Colors.white : Colors.grey,
            )),
        duration: Duration(milliseconds: 100),
        child: Row(
          children: [
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FaIcon(widget.icon)),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                Text(widget.subtitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
