class StoryModel {
  String image;
  String username;

  StoryModel({
    required this.image,
    required this.username,
  });
}

final dummyStory = [
  StoryModel(
    image:
        'https://images.pexels.com/photos/845457/pexels-photo-845457.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'andrea_pq',
  ),
  StoryModel(
    image:
        'https://images.pexels.com/photos/307847/pexels-photo-307847.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'kaique',
  ),
  StoryModel(
    image:
        'https://images.pexels.com/photos/571169/pexels-photo-571169.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'dejong',
  ),
  StoryModel(
    image:
        'https://images.pexels.com/photos/1181345/pexels-photo-1181345.jpeg?auto=compress&cs=tinysrgb&w=400',
    username: 'morillo',
  ),
];
