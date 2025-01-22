import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:clubcon/features/articles/models/article_model.dart';
import 'package:clubcon/core/models/user_model.dart';
import 'package:clubcon/constants/key_constants.dart';

class CacheService extends GetxService {
  late Box<String> _articlesBox;
  late Box<String> _userBox;
  final _isInitialized = false.obs;

  bool get isInitialized => _isInitialized.value;

  @override
  Future<CacheService> init() async {
    try {
      await Hive.initFlutter(); // Initialize Hive
      _articlesBox = await Hive.openBox<String>(Constants.articlesBoxName);
      _userBox = await Hive.openBox<String>(Constants.userBoxName);
      _isInitialized.value = true;
      return this;
    } catch (e) {
      debugPrint('Error initializing CacheService: $e');
      rethrow;
    }
  }

  // User caching methods
  Future<UserModel?> getCachedUser() async {
    if (!_isInitialized.value) {
      debugPrint('Cache service not initialized');
      return null;
    }

    try {
      final cachedData = _userBox.get(Constants.userKey);
      if (cachedData != null) {
        return UserModel.fromJson(jsonDecode(cachedData));
      }
    } catch (e) {
      debugPrint('Error getting cached user: $e');
    }
    return null;
  }

  Future<void> cacheUser(UserModel user) async {
    if (!_isInitialized.value) {
      debugPrint('Cache service not initialized');
      return;
    }

    try {
      await _userBox.put(Constants.userKey, jsonEncode(user.toJson()));
    } catch (e) {
      debugPrint('Error caching user: $e');
    }
  }

  Future<void> clearUserCache() async {
    await _userBox.delete(Constants.userKey);
  }

  // Article caching methods
  Future<List<ArticleModel>> getCachedArticles() async {
    final cachedData = _articlesBox.get(Constants.articlesKey);
    if (cachedData != null) {
      final List<dynamic> decodedData = jsonDecode(cachedData);
      return decodedData
          .map((article) => ArticleModel.fromJson(article))
          .toList();
    }
    return [];
  }

  Future<void> cacheArticles(List<ArticleModel> articles) async {
    final encodedData =
        jsonEncode(articles.map((article) => article.toJson()).toList());
    await _articlesBox.put(Constants.articlesKey, encodedData);
  }

  Future<void> clearArticlesCache() async {
    await _articlesBox.delete(Constants.articlesKey);
  }

  // Clear all cache
  Future<void> clearAllCache() async {
    await _articlesBox.clear();
    await _userBox.clear();
  }
}
