import 'package:gallery_test_app/model/user_image.dart';

abstract class Repository {
  Future<List<UserImage>> getUserImages();
}
