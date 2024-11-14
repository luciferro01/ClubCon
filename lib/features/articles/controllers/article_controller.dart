import 'package:clubcon/constants/image_constants.dart';
import 'package:get/get.dart';
import '../models/article_model.dart';

class ArticleController extends GetxController {
  var isLiked = false.obs;
  late ArticleModel article;

  @override
  void onInit() {
    super.onInit();
    fetchArticle();
  }

  void fetchArticle() {
    article = ArticleModel(
      title: 'Optimize Environment',
      description: 'Improve your sleep with pre-sleep meditation.',
      rating: '+5',
      timeToRead: '10-20',
      bannerUrl: ImageAssets.leaves,
      author: 'Dr. Freud',
      authorAvatarUrl: 'assets/images/author.jpg',
      date: DateTime.now(),
      content: """
## Overview
Improve your sleep routine with the power of pre-sleep meditation. Engaging in a short meditation session can calm the mind and prepare your body for restful sleep.

### Tips:
- Use blackout curtains or blinds to block external light sources.
- Create a darker environment conducive to sleep.
      """,
      category: 'Sleep',
      likes: '10',
      views: '150',
      isLiked: false,
      isViewed: true,
      isLikedByUser: false,
    );
  }

  void toggleLike() {
    isLiked.value = !isLiked.value;
  }
}
