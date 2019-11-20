import 'package:flutter/material.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:woofstagram/screens/screen_parts/isView.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();

  DetailScreen(this.userId);

  final int userId;
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> urlList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4Xe99TIWtyE1jQqmu2q0y9Q9SYcZmLFox1GVZKKuLc9tRDOiB&s',
    'https://pbs.twimg.com/media/BIj_U6JCUAAtlA_.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAQOusl89acEPy81soZIxZF-34Nckv-_T3ZMNxgaxMbQ8XJWcijg&s',
    'https://barkpost.com/wp-content/uploads/2015/03/wattson07.jpg',
    'https://pics.me.me/thumb_i1-12-0-314-452-901-4ws0e-4m-5380-lily-lu-dog-51031556.png',
    'https://dextersdeli.com/shop/wp-content/uploads/2019/06/PB-deatils.jpg',
    'https://i.ytimg.com/vi/x5cahyxrvsY/maxresdefault.jpg',
  ];

  List<String> profileList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOw2jfEqJcainzTgnp7wVhCAtTB-vnbi68ap6KWEztuSvIUcyX',
    'https://cdn3-www.dogtime.com/assets/uploads/2019/06/national-selfie-day-dogs-1.jpg',
    'https://i.dailymail.co.uk/i/pix/2015/07/18/01/2A61B34800000578-3165989-image-a-61_1437179464366.jpg',
    'https://i.dailymail.co.uk/i/pix/2016/03/01/16/31BBA71F00000578-0-A_winning_smile_Wesley_a_six_month_old-a-13_1456850541117.jpg',
    'https://cdn.newsapi.com.au/image/v1/3530e01f7c74035dcf008132715cc4da?width=1024',
    'https://cf.ltkcdn.net/dogs/images/std/194346-342x228-Dog-with-treat-on-nose.jpg',
    'https://previews.123rf.com/images/damedeeso/damedeeso1506/damedeeso150600137/41764855-french-bulldog-dog-having-a-good-time-with-a-tennis-ball-in-living-room-looking-at-owner-very-carefu.jpg',
  ];

  List<String> nameList = [
    'Hungry Doggo',
    'Pug Pogi',
    'Shit Yu',
    'Golden Pooper',
    'Chihuahua Ako',
    'Boy Takaw',
    'Bally The Bully',
  ];

  List<String> timeList = ['41m', '58m', '1h', '5h', '8h', '17h', '23h'];

  Timer _timer;
  int _start = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            if (widget.userId < 6) {
              IsViewClass.isViewSetter(widget.userId, true);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          DetailScreen(widget.userId + 1)));
            } else {
              IsViewClass.isViewSetter(widget.userId, true);
              timer.cancel();
              Navigator.pop(context);
            }
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            GestureDetector(
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.grey.shade800,
                        child: Image.network(
                          urlList[widget.userId],
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height -
                              (MediaQuery.of(context).size.height * .15),
                          fit: BoxFit.contain,
                          scale: .1,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'imageHero${widget.userId}',
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(profileList[widget.userId]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              nameList[widget.userId],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                          Text(timeList[widget.userId],
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0)),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(1.0),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 2,
                          lineHeight: 3.0,
                          animationDuration: 5900,
                          percent: 1.0,
                          animation: true,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  IsViewClass.isViewSetter(widget.userId, true);
                  Navigator.pop(context);
                },
                onPanUpdate: (details) {
                  if (details.delta.dx < 0) {
                    IsViewClass.isViewSetter(widget.userId, true);
                    if (widget.userId < 6) {
                      IsViewClass.isViewSetter(widget.userId, true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  DetailScreen(widget.userId + 1)));
                    } else {
                      IsViewClass.isViewSetter(widget.userId, true);
                      _timer.cancel();
                      Navigator.pop(context);
                    }
                  } else if (details.delta.dx > 0) {
                    IsViewClass.isViewSetter(widget.userId, true);
                    if (widget.userId <= 6 && widget.userId > 0) {
                      IsViewClass.isViewSetter(widget.userId, true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  DetailScreen(widget.userId - 1)));
                    } else {
                      IsViewClass.isViewSetter(widget.userId, true);
                      _timer.cancel();
                      Navigator.pop(context);
                    }
                  }
                }),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0, top: 10, bottom: 10, left: 20),
                    child: Icon(
                      LineAwesomeIcons.camera,
                      size: 30.0,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width -
                        (MediaQuery.of(context).size.width / 3),
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Send message',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, top: 10, bottom: 10, left: 10),
                    child: Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 25.0,
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
