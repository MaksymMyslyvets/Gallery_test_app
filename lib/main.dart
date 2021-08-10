import 'package:flutter/material.dart';
import 'package:gallery_test_app/gallery_test_app.dart';
import 'package:gallery_test_app/strings.dart';

void main() {
  runApp(
    MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(primaryColor: Colors.green.shade100),
      home: GalleryApp(),
    ),
  );
}
