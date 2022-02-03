
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:newnextbase/library_page.dart';
import 'package:newnextbase/video_player.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> videos = [
    'https://archive.org/download/SampleVideo1280x7205mb/SampleVideo_1280x720_5mb.mp4',
    'https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4',
    'https://filesamples.com/samples/video/mp4/sample_640x360.mp4'
  ];
  String istapped = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child:  Container(
              padding:  const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: const Card(
                      child: Center(
                          child: VideoPlayerRemote(url: "https://archive.org/download/SampleVideo1280x7205mb/SampleVideo_1280x720_5mb.mp4")
                      ),
                    ),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                  ),
                  Row(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 130,
                                padding:  const EdgeInsets.all(3.0),
                                child: Image.asset('images/dash-camera.png', fit: BoxFit.cover),),]),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("NETBASE 522GW",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Serial No : 1214132",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Firm Aware : 12 X",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                ),

                              ],
                            ),
                            RaisedButton(
                              //     disabledColor: Colors.red,
                              // disabledTextColor: Colors.black,
                              padding: const EdgeInsets.all(5),
                              textColor: Colors.white,
                              color: Colors.blueAccent,
                              onPressed: () {
                                setState(() {
                                  istapped = 'Button tapped';
                                });
                              },
                              child: Text('Update frimware'),
                            ),
                          ],
                        )

                      ]
                  ),
                  const Divider(
                    height: 5,
                    thickness: 4,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding:  const EdgeInsets.all(5.0),
                          child: Image.asset('images/amazin.png', fit: BoxFit.cover),),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Center(
                        child: RaisedButton(
                          disabledColor: Colors.red,
                          disabledTextColor: Colors.deepPurpleAccent,
                          padding: const EdgeInsets.all(5),
                          textColor: Colors.white,
                          color: Colors.blueAccent,
                          onPressed: () {
                            setState(() {
                              istapped = 'Button tapped';
                            });
                          },
                          child: Text('Learn More'),
                        ),
                      ),

                    ],
                  )

                ],
              ),
            ),
          ),
        );

  }
}

