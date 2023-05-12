import './photos_screen.dart';
import './video_screen.dart';
import 'package:flutter/material.dart';

class UpTab extends StatelessWidget {
  const UpTab({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
    child: Scaffold(
      appBar: AppBar(
        title: Text("المواد التعليمية"),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.photo_library),
              text: "الصور",
            ),
            Tab(
              icon: Icon(Icons.video_library),
              text: "المقاطع",
            ),
          ],
        ),
      ),
      body: TabBarView(children: [
        PhotosScreen(),
        VideoScreen(),
      ]),
    ));
  }
}