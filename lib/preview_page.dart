import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PreviewPage extends StatelessWidget {
  PreviewPage({super.key, required this.picture});
  final XFile picture;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(
        title: const Text('Preview Page'),
      ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 1.0, mainAxisSpacing: 1.0),
        itemBuilder: (context, index) {
          return Image.file(File(picture.path));
        },
      ),

      // body: Center(
      //     child: Column(
      //   children: [
      //     Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
      //     const SizedBox(
      //       height: 24,
      //     ),
      //     Text(picture.name)
      //   ],
      // )),
    );
  }
}
