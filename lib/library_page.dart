import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnextbase/video_player.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 5,
            //itemExtent: 100,
            itemBuilder: (BuildContext context,int index) {
              return ListTile(
                  dense: true,
                  visualDensity: VisualDensity(vertical: 4),
                  leading: Container(child: Card(child: VideoPlayerRemote(url: 'https://filesamples.com/samples/video/mp4/sample_640x360.mp4'))),
                  trailing: Text("GFG",
                    style: TextStyle(
                        color: Colors.green, fontSize: 15),),
                  title: Text("List item $index")
              );
            }
        ),
      );


  }
}
