class StoryEntity {
  final String imgLink;
  final String title;

  StoryEntity({
    required this.imgLink,
    required this.title,
  });

  factory StoryEntity.fromJson({required Map<String, dynamic> json}) {
    return StoryEntity(
      imgLink: json['imgLink'],
      title: json['title'],
    );
  }
}
