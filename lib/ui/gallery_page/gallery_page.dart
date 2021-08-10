import 'package:flutter/material.dart';
import 'package:gallery_test_app/model/user_image.dart';
import 'package:gallery_test_app/repository/user_image_repository.dart';
import 'package:gallery_test_app/strings.dart';
import 'package:gallery_test_app/ui/gallery_page/gallery_page_controller.dart';
import 'package:gallery_test_app/ui/image_page/image_page.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final _controller = GalleryPageController(UserImageRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserImage>>(
      future: _controller.fetchUserImages(),
      builder: (context, snapshot) {
        var userImages = snapshot.data;
        if (userImages != null) {
          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: userImages.length,
            itemBuilder: (BuildContext context, int position) {
              return _buildRow(userImages[position]);
            },
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return Center(child: const CircularProgressIndicator());
      },
    );
  }

  Widget _buildRow(UserImage userImage) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(userImage.smallImageUrl),
      ),
      title: Text(userImage.imageName ?? Strings.missingName,
          style: TextStyle(fontSize: 18.0)),
      subtitle: Text(userImage.userName),
      dense: true,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ImagePage(
              userImage: userImage,
            ),
          ),
        );
      },
    );
  }
}
