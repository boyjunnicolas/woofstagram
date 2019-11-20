import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen_parts/feed_card.dart';

class PostScreen extends StatelessWidget {
  PostScreen({
    this.name,
    this.imgUrl,
    this.noOfLikes,
    this.richText,
    this.noOfComments,
    this.hours,
    this.widgetImages,
    this.location = '',
  });

  final String name;
  final String imgUrl;
  final String noOfLikes;
  final RichText richText;
  final RichText noOfComments;
  final String hours;
  final Widget widgetImages;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('Photo'),
      ),
      body: SafeArea(
          child: ListView(children: <Widget>[
        ProfileFeedCard(
          name: name,
          imgUrl: imgUrl,
          noOfLikes: noOfLikes,
          noOfComments: noOfComments,
          hours: hours,
          widgetImages: widgetImages,
          location: location,
        ),
      ])),
    );
  }
}
