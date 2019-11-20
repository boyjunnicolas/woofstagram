import 'package:flutter/material.dart';

class MyDay extends StatelessWidget {
  MyDay({this.name, this.imgUrl, this.number, this.isView = false});

  final String name;
  final String imgUrl;
  final int number;
  final bool isView;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1.0),
              borderRadius: BorderRadius.circular(
                50.0,
              ),
              gradient: !isView
                  ? LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        // Colors are easy thanks to Flutter's Colors class.
                        Colors.red[800],
                        Colors.pink[700],
                        Colors.orange[600],
                        Colors.orangeAccent[400],
                      ],
                    )
                  : LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        // Colors are easy thanks to Flutter's Colors class.
                        Colors.grey[600],
                        Colors.grey[600],
                        Colors.grey[600],
                        Colors.grey[600],
                      ],
                    ),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2.0),
                borderRadius: BorderRadius.circular(50.0),
              ),
              margin: EdgeInsets.all(2.5),
              child: Hero(
                tag: 'imageHero$number',
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(imgUrl),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 12.0),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

//
