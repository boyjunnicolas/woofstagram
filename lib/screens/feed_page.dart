import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'screen_parts/feed_card.dart';
import 'screen_parts/myday.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen_parts/stories.dart';
import 'screen_parts/isView.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          LineAwesomeIcons.camera,
                          size: 30.0,
                        )),
                    Text(
                      'Woofstagram',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Billabong',
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.tv),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(FontAwesomeIcons.paperPlane)
                  ],
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            IsViewClass.isViewSetter(0, true);
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(0);
                          }));
                        },
                        child: MyDay(
                            isView: IsViewClass.isViewGetter(0),
                            number: 0,
                            name: 'Your Story',
                            imgUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            IsViewClass.isViewSetter(1, true);
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(1);
                          }));
                        },
                        child: MyDay(
                            isView: IsViewClass.isViewGetter(1),
                            number: 1,
                            name: 'puglife',
                            imgUrl:
                                'https://cdn3-www.dogtime.com/assets/uploads/2019/06/national-selfie-day-dogs-1.jpg'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            IsViewClass.isViewSetter(2, true);
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(2);
                          }));
                        },
                        child: MyDay(
                            isView: IsViewClass.isViewGetter(2),
                            number: 2,
                            name: 'shityou',
                            imgUrl:
                                'https://i.dailymail.co.uk/i/pix/2015/07/18/01/2A61B34800000578-3165989-image-a-61_1437179464366.jpg'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            IsViewClass.isViewSetter(3, true);
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(3);
                          }));
                        },
                        child: MyDay(
                            isView: IsViewClass.isViewGetter(3),
                            number: 3,
                            name: 'goldenpooper',
                            imgUrl:
                                'https://i.dailymail.co.uk/i/pix/2016/03/01/16/31BBA71F00000578-0-A_winning_smile_Wesley_a_six_month_old-a-13_1456850541117.jpg'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            IsViewClass.isViewSetter(4, true);
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(4);
                          }));
                        },
                        child: MyDay(
                            isView: IsViewClass.isViewGetter(4),
                            number: 4,
                            name: 'guddog',
                            imgUrl:
                                'https://cdn.newsapi.com.au/image/v1/3530e01f7c74035dcf008132715cc4da?width=1024'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            IsViewClass.isViewSetter(5, true);
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(5);
                          }));
                        },
                        child: MyDay(
                            isView: IsViewClass.isViewGetter(5),
                            number: 5,
                            name: 'treathunter',
                            imgUrl:
                                'https://cf.ltkcdn.net/dogs/images/std/194346-342x228-Dog-with-treat-on-nose.jpg'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            IsViewClass.isViewSetter(6, true);
                          });

                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(6);
                          }));
                        },
                        child: MyDay(
                            isView: IsViewClass.isViewGetter(6),
                            number: 6,
                            name: 'thebally',
                            imgUrl:
                                'https://previews.123rf.com/images/damedeeso/damedeeso1506/damedeeso150600137/41764855-french-bulldog-dog-having-a-good-time-with-a-tennis-ball-in-living-room-looking-at-owner-very-carefu.jpg'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 1.0, color: Colors.grey.shade800),
            FeedCard(
              widgetImages: Stack(children: <Widget>[
                CarouselSlider(
                  height: 300.0,
                  enableInfiniteScroll: true,
                  //enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  autoPlayCurve: Curves.linear,
                  aspectRatio: 1,
                  items: [
                    'https://m.media-amazon.com/images/M/MV5BMTQyNzUyODE3OV5BMl5BanBnXkFtZTgwOTkzOTc3MjE@._V1_.jpg',
                    'https://img.cinemablend.com/filter:scale/quill/e/c/c/9/e/2/ecc9e2a8564396849e51d81809c1dae0e3de7fd5.jpg?mw=600',
                    'https://m.media-amazon.com/images/M/MV5BNzE1MTQxMTA5NV5BMl5BanBnXkFtZTgwNjk5Njc3MjE@._V1_.jpg',
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            child: FittedBox(
                                alignment: Alignment.bottomCenter,
                                fit: BoxFit.fill,
                                child: Image.network(
                                  '$i',
                                )));
                      },
                    );
                  }).toList(),
                ),
              ]),
              name: 'blue',
              imgUrl:
                  'https://vignette.wikia.nocookie.net/iannielli-legend/images/2/2b/Blue_the_dog.jpg/revision/latest?cb=20150714152518',
              noOfLikes: '543,214',
              noOfComments: '723',
              hours: '12',
              richText: RichText(
                  text: TextSpan(
                text: 'blue',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: '  Shout out to my man ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal)),
                  TextSpan(
                    text: '@SteveBurns',
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: '. I miss you brother!',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  )
                ],
              )),
            ),
            FeedCard(
              location: 'Paris, France',
              widgetImages: Image.network(
                  'https://resizing.flixster.com/iE405nNfFb6V6sz9QU8xt9xIVbU=/300x300/v1.aDs1ODk3O2o7MTgyMjU7MTIwMDs3MDA7NzAw'),
              name: 'shoeshine',
              imgUrl:
                  'https://i.pinimg.com/originals/f2/a6/8b/f2a68bd4783570f15328959e4d5c46ee.jpg',
              noOfLikes: '5,323,014',
              noOfComments: '498,762',
              hours: '3',
              richText: RichText(
                  text: TextSpan(
                text: 'underdog',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: '  There\'s no need to fear, Underdog is here.',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal)),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
