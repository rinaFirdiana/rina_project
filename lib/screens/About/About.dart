import 'package:flutter/material.dart';
import 'package:rina_project/screens/About/text_section.dart';
import 'package:rina_project/screens/About/image_banner.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../style.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: ImageBanner("assets/images/banner.jpg"),
          ),
          Container(
            child: TextSection(
                "About us",
                "Healthee App is a smartphone app and website that tracks calories. The app" +
                    " encourage users to lose weight and stay healthy."),
          ),
          Container(
            child: TextSection(
                "Company",
                "Our goal is to increase the quality and years of healthy life for our users" +
                    " and see a world of healthy people"),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 50, 40, 5),
            child: new FlatButton(
                color: Colors.cyan[100],
                onPressed: () => launch('tel://88888888'),
                child: new Text(
                  "Click to call us!",
                  style: Body1TextStyle,
                )),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 5, 40, 40),
            child: new FlatButton(
                color: Colors.cyan[100],
                onPressed: () => launch(
                    'mailto:Customer_Healthee@healthee.com?subject=Feedback'),
                child: new Text(
                  "Email Us",
                  style: Body1TextStyle,
                )),
          ),
        ],
      ),
    );
  }
}
