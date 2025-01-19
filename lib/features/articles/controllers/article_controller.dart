import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/core/services/cache_service.dart';
import 'package:get/get.dart';
import '../models/article_model.dart';

class ArticleController extends GetxController {
  var isLiked = false.obs;
  final articles = <ArticleModel>[].obs;
  late ArticleModel article;
  final CacheService _cacheService = Get.find<CacheService>();

  @override
  void onInit() {
    super.onInit();
    loadArticles();
  }

  Future<void> loadArticles() async {
    // First try to load from cache
    final cachedArticles = await _cacheService.getCachedArticles();
    if (cachedArticles.isNotEmpty) {
      articles.value = cachedArticles;
      article = articles[0]; // Set the first article as current
      return;
    }

    // If no cached data, load mock data (replace this with actual API call later)
    final mockArticle = ArticleModel(
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

    articles.add(mockArticle);
    article = mockArticle;

    // Cache the articles
    await _cacheService.cacheArticles(articles);
  }

  void toggleLike() {
    isLiked.value = !isLiked.value;
  }
}
