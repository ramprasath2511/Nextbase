import 'package:flutter/material.dart';
import 'package:newnextbase/library_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monday 20/12/2021",
          style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16) ,),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // body: Column(
      //   children: [
      //     Divider(
      //       thickness: 10,
      //       color: Colors.deepPurple,
      //     ),
      //     Text("31/12/2022 Monday",
      //     style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      //     Divider(
      //       thickness: 10,
      //       color: Colors.deepPurple,
      //     ),
body: Library()
    );


  }
}
