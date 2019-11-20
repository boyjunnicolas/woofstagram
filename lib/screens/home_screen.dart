import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'feed_page.dart';
import 'activity_page.dart';
import 'add_page.dart';
import 'search_page.dart';
import 'profile_page.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  int _currentTab = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          FeedPage(),
          SearchPage(),
          AddPage(),
          ActivityPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.black54,
        ),
        child: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: Colors.white),
            currentIndex: _currentTab,
            onTap: (int index) {
              setState(() {
                _currentTab = index;
              });
              _pageController.jumpToPage(_currentTab);
            },
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  LineAwesomeIcons.home,
                  size: 35.0,
                ),
                activeIcon: Icon(
                  Icons.home,
                  size: 35.0,
                ),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 35.0,
                ),
                activeIcon: Icon(
                  Icons.search,
                  size: 35.0,
                ),
                title: Text('search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  LineAwesomeIcons.plus_square,
                  size: 35.0,
                ),
                activeIcon: Icon(
                  Icons.add_box,
                  size: 35.0,
                ),
                title: Text('Add'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  size: 35.0,
                ),
                activeIcon: Icon(
                  Icons.favorite,
                  size: 35.0,
                ),
                title: Text('favorite_border'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  LineAwesomeIcons.user,
                  size: 35.0,
                ),
                activeIcon: Icon(
                  Icons.person,
                  size: 35.0,
                ),
                title: Text('person'),
              ),
            ]),
      ),
    );
  }
}
