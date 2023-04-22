class PostModel {
  String username;
  String userImage;
  String? location;
  String type;
  List<String> content;
  int likes;
  String caption;

  PostModel({
    required this.caption,
    required this.content,
    required this.likes,
    this.location,
    required this.type,
    required this.userImage,
    required this.username,
  });
}

final dummyPosts = [
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/378570/pexels-photo-378570.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/3043592/pexels-photo-3043592.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'https://images.pexels.com/photos/3031255/pexels-photo-3031255.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    ],
    likes: 44567,
    type: 'photos',
    userImage:
        'https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'spencer',
    location: 'Tokyo, Japan',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
];
