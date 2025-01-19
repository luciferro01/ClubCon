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
    this.isLiked,
    this.isViewed,
    this.isLikedByUser,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'] as String,
      description: json['description'] as String,
      rating: json['rating'] as String,
      timeToRead: json['timeToRead'] as String,
      bannerUrl: json['bannerUrl'] as String,
      author: json['author'] as String,
      authorAvatarUrl: json['authorAvatarUrl'] as String,
      date: DateTime.parse(json['date'] as String),
      content: json['content'] as String,
      category: json['category'] as String,
      likes: json['likes'] as String,
      views: json['views'] as String,
      isLiked: json['isLiked'] as bool?,
      isViewed: json['isViewed'] as bool?,
      isLikedByUser: json['isLikedByUser'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'rating': rating,
      'timeToRead': timeToRead,
      'bannerUrl': bannerUrl,
      'author': author,
      'authorAvatarUrl': authorAvatarUrl,
      'date': date.toIso8601String(),
      'content': content,
      'category': category,
      'likes': likes,
      'views': views,
      'isLiked': isLiked,
      'isViewed': isViewed,
      'isLikedByUser': isLikedByUser,
    };
  }
}
