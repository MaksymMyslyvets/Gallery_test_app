import 'dart:convert';

import 'package:gallery_test_app/model/user_image.dart';
import 'package:gallery_test_app/repository/repository.dart';
import 'package:http/http.dart' as http;

class UserImageRepository implements Repository {
  String _dataUrl =
      "https://api.unsplash.com/photos/?client_id=896d4f52c589547b2134bd75ed48742db637fa51810b49b607e37e46ab2c0043";

  @override
  Future<List<UserImage>> getUserImages() async {
    http.Response response = await http.get(Uri.parse(_dataUrl));

    List<UserImage> parsePhotos(String responseBody) {
      final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

      return parsed.map<UserImage>((json) => UserImage.fromJson(json)).toList();
    }

    return parsePhotos(response.body);
  }
}
