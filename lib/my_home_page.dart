import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:gallery/camera_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gallery'),
          centerTitle: true,
        ),
        body: CameraPage(),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await availableCameras().then((value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => CameraPage(cameras: value))));
            },
            child: Icon(Icons.camera_alt_rounded)));
  }
}
