import 'package:flutter/material.dart';
import 'package:gallery_test_app/strings.dart';
import 'package:gallery_test_app/ui/gallery_page/gallery_page.dart';

class GalleryApp extends StatelessWidget {
  const GalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ),
      body: GalleryPage(),
    );
  }
}
