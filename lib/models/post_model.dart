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

final dummySearchPosts = [
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
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/386009/pexels-photo-386009.jpeg?auto=compress&cs=tinysrgb&w=1600',
      'https://images.pexels.com/photos/413960/pexels-photo-413960.jpeg?auto=compress&cs=tinysrgb&w=1600',
      'https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg?auto=compress&cs=tinysrgb&w=1600',
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
      'https://images.pexels.com/photos/60217/pexels-photo-60217.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/1004584/pexels-photo-1004584.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/208701/pexels-photo-208701.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/164287/pexels-photo-164287.jpeg?auto=compress&cs=tinysrgb&w=1600',
      'https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&w=1600',
      'https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg?auto=compress&cs=tinysrgb&w=1600',
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
      'https://images.pexels.com/photos/33545/sunrise-phu-quoc-island-ocean.jpg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/870170/pexels-photo-870170.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/3355788/pexels-photo-3355788.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/1122408/pexels-photo-1122408.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
  PostModel(
    caption: 'The game in Japan was amazing and i want to share some photos',
    content: [
      'https://images.pexels.com/photos/2827374/pexels-photo-2827374.jpeg?auto=compress&cs=tinysrgb&w=1600',
    ],
    likes: 44567,
    type: 'photo',
    userImage:
        'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'cottonbro',
  ),
];
