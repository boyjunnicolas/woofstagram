import 'package:flutter/material.dart';
import 'screen_parts/feed_card.dart';
import 'post_screen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int activeScreen = 1;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
  }

  Widget switchDisplay() {
    if (activeScreen == 2) {
      return Column(
        children: <Widget>[
          ProfileFeedCard(
            name: 'hungrydoggo',
            widgetImages: Image.asset('assets/images/1.jpg'),
            imgUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX',
            noOfComments: RichText(
                text: TextSpan(
              text: 'shibaminaj',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(text: '  💕💕', style: TextStyle(color: Colors.white)),
              ],
            )),
            noOfLikes: 'Liked by shibaminaj and 52 others',
            location: '',
            hours: '2',
            richText: RichText(
                text: TextSpan(
              text: 'hungrydoggo',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: ' Missing my long hair 😥 ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal)),
              ],
            )),
          ),
          ProfileFeedCard(
            name: 'hungrydoggo',
            widgetImages: Image.asset('assets/images/2.jpeg'),
            imgUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX',
            noOfComments: RichText(
                text: TextSpan(
              text: 'shibaminaj',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: ' Hindi man lang ako pinag-pose 😠😠',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal)),
              ],
            )),
            noOfLikes: 'Liked by thebally and 52 others',
            location: 'Starbucks BGC',
            hours: '4',
            richText: RichText(
                text: TextSpan(
              text: 'hungrydoggo',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: ' Chill\'in ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal)),
              ],
            )),
          ),
          ProfileFeedCard(
            name: 'hungrydoggo',
            widgetImages: Image.asset('assets/images/3.jpg'),
            imgUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX',
            noOfComments: RichText(
                text: TextSpan(
              text: 'shibaniggah',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: ' squad goals ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal)),
              ],
            )),
            noOfLikes: 'Liked by puglife and 52 others',
            location: '',
            hours: '5',
            richText: RichText(
                text: TextSpan(
              text: 'hungrydoggo',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: ' Throwback ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal)),
              ],
            )),
          ),
        ],
      );
    } else if (activeScreen == 3) {
      return TaggedImages();
    } else {
      return GalleryImages();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Row(
            children: <Widget>[Text('hungrydoggo'), Icon(Icons.expand_more)],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX'),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "12 🐾 ",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "Paws",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey.shade500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "299 🐾 ",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "Pawllowers",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey.shade500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "154 🐾 ",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "Pawllowing",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey.shade500,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          height: 32.0,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)),
                          width: 250.0,
                          //color: Colors.black,
                          child: FlatButton(
                            onPressed: null,
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hungry Doggo',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    height: 25.0,
                    child: Text(
                      'Eat, Sleep, Poop, Repeat',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade800,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          activeScreen = 1;
                        });
                      },
                      icon: Icon(
                        Icons.grid_on,
                        color: (activeScreen == 1) ? Colors.blueAccent : null,
                      ),
                      label: Text('')),
                  FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          activeScreen = 2;
                        });
                      },
                      icon: Icon(
                        Icons.view_day,
                        color: (activeScreen == 2) ? Colors.blueAccent : null,
                      ),
                      label: Text('')),
                  FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          activeScreen = 3;
                        });
                      },
                      icon: Icon(
                        Icons.account_box,
                        color: (activeScreen == 3) ? Colors.blueAccent : null,
                      ),
                      label: Text('')),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: switchDisplay(),
            )
          ],
        ),
      ),
    );
  }
}

class GalleryImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              child: GalleryImage(url: 'assets/images/1.jpg'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PostScreen(
                              name: 'hungrydoggo',
                              widgetImages: Image.asset('assets/images/1.jpg'),
                              imgUrl:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX',
                              noOfComments: RichText(
                                  text: TextSpan(
                                text: 'shibaminaj',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '  💕💕',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              )),
                              noOfLikes: 'Liked by shibaminaj and 52 others',
                              location: '',
                              hours: '2',
                              richText: RichText(
                                  text: TextSpan(
                                text: 'hungrydoggo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Missing my long hair 😥 ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )),
                            )));
              },
            ),
            GestureDetector(
              child: GalleryImage(url: 'assets/images/2.jpeg'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PostScreen(
                              name: 'hungrydoggo',
                              widgetImages: Image.asset('assets/images/2.jpeg'),
                              imgUrl:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX',
                              noOfComments: RichText(
                                  text: TextSpan(
                                text: 'shibaminaj',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          ' Hindi man lang ako pinag-pose 😠😠',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )),
                              noOfLikes: 'Liked by thebally and 52 others',
                              location: 'Starbucks BGC',
                              hours: '4',
                              richText: RichText(
                                  text: TextSpan(
                                text: 'hungrydoggo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Chill\'in ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )),
                            )));
              },
            ),
            GestureDetector(
              child: GalleryImage(url: 'assets/images/3.jpg'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PostScreen(
                              name: 'hungrydoggo',
                              widgetImages: Image.asset('assets/images/3.jpg'),
                              imgUrl:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX',
                              noOfComments: RichText(
                                  text: TextSpan(
                                text: 'shibaniggah',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' squad goals ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )),
                              noOfLikes: 'Liked by puglife and 52 others',
                              location: '',
                              hours: '5',
                              richText: RichText(
                                  text: TextSpan(
                                text: 'hungrydoggo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Throwback ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )),
                            )));
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GalleryImage(url: 'assets/images/7.jpg'),
            GalleryImage(url: 'assets/images/8.jpg'),
            GalleryImage(url: 'assets/images/9.jpg'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GalleryImage(url: 'assets/images/4.jpg'),
            GalleryImage(url: 'assets/images/5.jpg'),
            GalleryImage(url: 'assets/images/6.jpeg'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GalleryImage(url: 'assets/images/10.jpg'),
            GalleryImage(url: 'assets/images/11.jpg'),
            GalleryImage(url: 'assets/images/12.jpg'),
          ],
        ),
      ],
    );
  }
}

class TaggedImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GalleryImage(url: 'assets/images/13.jpg'),
            GalleryImage(url: 'assets/images/14.jpeg'),
            GalleryImage(url: 'assets/images/15.jpg'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GalleryImage(url: 'assets/images/16.png'),
            GalleryImage(url: 'assets/images/17.png'),
            GalleryImage(url: 'assets/images/18.jpg'),
          ],
        ),
      ],
    );
  }
}

class GalleryImage extends StatelessWidget {
  GalleryImage({this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(1.0),
        height: MediaQuery.of(context).size.width / 3,
        width: MediaQuery.of(context).size.width / 3,
        child: Image.asset(
          '$url',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

//onTap: () {
//Navigator.push(context,
//MaterialPageRoute(builder: (context) => PostScreen()));
//},
