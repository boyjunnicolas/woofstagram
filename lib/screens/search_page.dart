import 'package:flutter/material.dart';
import 'screen_parts/myday.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.grey.shade900,
              pinned: true,
              // Provide a standard title.
              title: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),

              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 0,
              /*actions: <Widget>[
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          child: Text(''),
                        ),
                      ],
                    ),
                  ],
                ),
              ],*/

              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
            ),
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildListDelegate([
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network(
                            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/golden-retriever-royalty-free-image-506756303-1560962726.jpg?crop=0.669xw:1.00xh;0.166xw,0&resize=640:*',
                            height: 120.0,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network(
                            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/adorable-cavalier-king-charles-spaniel-puppy-royalty-free-image-523255012-1565106446.jpg?crop=0.448xw:1.00xh;0.370xw,0&resize=480:*',
                            height: 120.0,
                            width: MediaQuery.of(context).size.width / 3,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.network(
                          'https://media.tenor.com/images/9eb8ac525f66d5294fe7cd28bf3a9bea/tenor.gif',
                          height: 240.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'http://fallinpets.com/wp-content/uploads/2017/11/dogs-cute-dog-800x445.jpg',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://static.makeuseof.com/wp-content/uploads/2017/11/puppy-photos-videos-670x335.jpg',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'http://www.cutestpaw.com/wp-content/uploads/2011/11/cute-dog1.jpg',
                        height: 120.0,
                        width: (MediaQuery.of(context).size.width / 3) - 12,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://vetstreet-brightspot.s3.amazonaws.com/ce/5f/93fda1e040878121ae12ffca1c75/bee-near-a-dog-thinkstockphotos-537456468-335.jpg',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://i0.wp.com/vettedpetcare.com/vetted-blog/wp-content/uploads/2018/07/sumer-dangers-for-your-pet-square.jpeg?resize=350%2C200&ssl=1',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://i.imgur.com/1fi6Q74.jpg',
                        height: 120.0,
                        width: (MediaQuery.of(context).size.width / 3) - 12,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'http://4.bp.blogspot.com/_Vm3YcsHtbnQ/Suc5QBQytBI/AAAAAAAACQ0/90gmibC2Ym0/s400/charlie_0r.jpg',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROyc9bJX_A4u-jIVL5rGZ_YPkyM2ZkBXnxGPtzoLghL3mJCcaOpA&s',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://i.dailymail.co.uk/i/newpix/2018/09/06/21/4FCCB71C00000578-0-image-a-78_1536265252004.jpg',
                        height: 120.0,
                        width: (MediaQuery.of(context).size.width / 3) - 12,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'http://thehappypet.co/wp-content/uploads/2015/10/cute-puppy-dog-400x240.jpg',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://img.buzzfeed.com/buzzfeed-static/static/2014-12/2/20/enhanced/webdr02/longform-original-6239-1417571641-23.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto&output-quality=auto&output-format=auto&downsize=360:*',
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.network(
                        'https://imgix.ranker.com/user_node_img/50052/1001020044/original/1-photo-u2?w=650&q=50&fm=pjpg&fit=crop&crop=faces',
                        height: 120.0,
                        width: (MediaQuery.of(context).size.width / 3) - 12,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
