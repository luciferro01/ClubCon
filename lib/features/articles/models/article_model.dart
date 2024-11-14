class ArticleModel {
  final String title;
  final String description;
  final String rating;
  final String timeToRead;
  final String bannerUrl;
  final String author;
  final String authorAvatarUrl;
  final DateTime date;
  final String content;
  final String category;
  final String likes;
  final String views;
  final bool? isLiked;
  final bool? isViewed;
  final bool? isLikedByUser;

  ArticleModel({
    required this.title,
    required this.description,
    required this.rating,
    required this.timeToRead,
    required this.bannerUrl,
    required this.author,
    required this.authorAvatarUrl,
    required this.date,
    required this.content,
    required this.category,
    required this.likes,
    required this.views,
    this.isLiked = false,
    required this.isViewed,
    required this.isLikedByUser,
  });
}
