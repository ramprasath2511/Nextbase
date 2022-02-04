import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnextbase/video_player.dart';


class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
        child: ListView.builder(
            itemCount: 5,
            //itemExtent: 100,
            itemBuilder: (BuildContext context,int index) {
              return Column(
                children: [
                  Container(
                    height: 100,
                    width: 400,

                    child: ListTile(
                      onTap: (){
                        showLoaderDialog(context);

                      },
                        leading: Container(
                          child: VideoPlayerRemote(url: 'https://filesamples.com/samples/video/mp4/sample_640x360.mp4'),
                          decoration:  BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                    ),),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("145MB",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 15),),
                          ],
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("20 May 2019 $index", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            Text("dateoftherecored.mp4", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Colors.grey),),
                            //Text("List item $index"),

                          ],
                        )

                    ),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      boxShadow: const [
                        BoxShadow(

                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                ],
              );
            }
        ),

      );


  }
  showLoaderDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: Container(
        color: Colors.black.withOpacity(0.5),
        child: new Column(

          children: [
            Text("Downloading 3 Files", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),),
            CircularProgressIndicator(),
            Container(
                child:Text("Downloading..." )),
            RaisedButton(
                child: Text('Cancel Downloading'),
              onPressed: () {
              Navigator.pop(context);
            },)
          ],),
      ),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }
}
