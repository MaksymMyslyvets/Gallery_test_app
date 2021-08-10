class UserImage {
  final String? imageName;
  final String userName;
  final String smallImageUrl;
  final String fullImageUrl;

  UserImage({
    required this.imageName,
    required this.userName,
    required this.smallImageUrl,
    required this.fullImageUrl,
  });

  factory UserImage.fromJson(Map<String, dynamic> json) {
    return UserImage(
      imageName: json['alt_description'] as String?,
      userName: json['user']['name'] as String,
      smallImageUrl: json['urls']['small'] as String,
      fullImageUrl: json['urls']['full'] as String,
    );
  }
}
