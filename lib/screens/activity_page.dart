import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text('Activity'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0, bottom: 8.0, top: 8.0, left: 8.0),
                    child: Icon(
                      LineAwesomeIcons.user_plus,
                      size: 50.0,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Follow Requests',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Approve or ignore requests',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Yesterday',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'http://2.bp.blogspot.com/_Y-zQ4ZPEHn0/TInC54mT_aI/AAAAAAAAI44/pGoAFj7sYOg/s1600/hammacher-schlemmer-gps-dog-tracking-system.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: 'Follow',
                              style: TextStyle(color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '  Bantatay, Snoop Dog',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text:
                                        ' and others you know to see their photos and videos',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ],
                            )),
                        Text(
                          '1d',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text('This Week',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://www.vet.cornell.edu/sites/default/files/styles/nodecontent_default/public/Shar_pei_puppy_%28age_2_months%29.jpg?itok=qk5oS0PP'),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: 'Charpei ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' shared 14 photos',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ],
                            )),
                        Text(
                          '2d',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://images-ra.adoptapet.com/seo/1/h/110_h.png')),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  text: 'Shiba Niggah ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' tagged you in a post',
                                        style: TextStyle(
                                          color: Colors.white,
                                        )),
                                  ],
                                )),
                            Text(
                              '2d',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/13.jpg',
                          width: 55.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Suggestions for you',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpeopledotcom.files.wordpress.com%2F2019%2F01%2Fboo-pomeranian-1.jpg&w=400&c=sc&poi=face&q=85')),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'boothepom',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Boo',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            Text(
                              'Follows you',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                        Container(
                          width: 80.0,
                          height: 30.0,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('Follow'),
                            color: Colors.blueAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
