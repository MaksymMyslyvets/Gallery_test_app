import 'package:gallery_test_app/model/user_image.dart';
import 'package:gallery_test_app/repository/repository.dart';

class GalleryPageController {
  final Repository _repository;

  GalleryPageController(this._repository);

  Future<List<UserImage>> fetchUserImages() {
    return _repository.getUserImages();
  }
}
