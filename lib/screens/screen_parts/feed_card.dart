import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedCard extends StatelessWidget {
  FeedCard({
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
  final String noOfComments;
  final String hours;
  final Widget widgetImages;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage('$imgUrl'),
                      radius: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            '$name',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$location',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.more_vert)
            ],
          ),
          widgetImages,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        LineAwesomeIcons.heart_o,
                        size: 30.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.comment,
                        size: 30.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.paperPlane,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                FontAwesomeIcons.bookmark,
                size: 30.0,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    '$noOfLikes',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'likes',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(5.0),
            child: richText,
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'View all $noOfComments comments',
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX'),
                      ),
                    ),
                    Text(
                      'Add a comment...',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '❤️',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Icon(LineAwesomeIcons.plus_circle)
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              '$hours hours ago',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 12.0),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileFeedCard extends StatelessWidget {
  ProfileFeedCard({
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
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage('$imgUrl'),
                      radius: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            '$name',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$location',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.more_vert)
            ],
          ),
          widgetImages,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        LineAwesomeIcons.heart_o,
                        size: 30.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.comment,
                        size: 30.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.paperPlane,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                FontAwesomeIcons.bookmark,
                size: 30.0,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(noOfLikes),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(5.0),
            child: richText,
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomLeft,
            child: noOfComments,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX'),
                      ),
                    ),
                    Text(
                      'Add a comment...',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              '$hours hours ago',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 12.0),
            ),
          )
        ],
      ),
    );
  }
}
