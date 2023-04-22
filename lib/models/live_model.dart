class LiveModel {
  String image;
  String username;

  LiveModel({
    required this.image,
    required this.username,
  });
}

final dummyLive = [
  LiveModel(
    image:
        'https://images.pexels.com/photos/442559/pexels-photo-442559.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'lucas',
  ),
];
