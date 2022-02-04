import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnextbase/Home/last_Screen.dart';
import 'package:newnextbase/library_page.dart';
import 'package:newnextbase/list_page.dart';
import 'package:newnextbase/video_player.dart';

import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int currentPage = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  List<String> videos = [
    'https://archive.org/download/SampleVideo1280x7205mb/SampleVideo_1280x720_5mb.mp4',
    'https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4',
    'https://filesamples.com/samples/video/mp4/sample_640x360.mp4'
  ];
  String istapped = '';
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Image.asset('images/next-base-discount-codes.png', fit: BoxFit.cover),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        actions: [Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
        ),

        ],
      ),
 body: Container(
    decoration: BoxDecoration(color: Colors.white),
    child: Center(
    child: _getPage(currentPage),
    ),
    ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home",
                onclick: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()))),
            TabData(iconData: Icons.library_books,
                title: "Library",
                onclick: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListPage()))),
            TabData(iconData: Icons.camera_alt, title: "Dash Cam"),
            TabData(iconData: Icons.settings_overscan_sharp, title: "S.O.S")
          ],
          initialSelection: 0,
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        )

    );
  }
}
_getPage(int page) {
  switch (page) {
    case 0:
      return HomeScreen();
    case 1:
      return ListPage();
    case 2:
      return LastScreen();
  }}