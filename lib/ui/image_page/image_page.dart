import 'package:flutter/material.dart';
import 'package:gallery_test_app/model/user_image.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key, required this.userImage}) : super(key: key);

  final UserImage userImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(userImage.fullImageUrl),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
