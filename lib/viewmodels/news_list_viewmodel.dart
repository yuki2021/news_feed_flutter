import 'package:flutter/material.dart';
import 'package:news_feed_flutter2/data/category_info.dart';
import 'package:news_feed_flutter2/data/search_type.dart';
import 'package:news_feed_flutter2/repository/news_repository.dart';

class NewsListViewModel extends ChangeNotifier {
  final NewsRepository _repository = NewsRepository();

  SearchType _searchType = SearchType.CATEGORY;

  SearchType get searchType => _searchType;

  Category _category = categories[0];

  Category get category => _category;

  String _keyword = "";

  String get keyword => _keyword;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> getNews(
      {required SearchType searchType,
      String? keyword,
      Category? category}) async {
    _searchType = searchType;
    _keyword = keyword ?? "";
    _category = _category ?? categories[0];

    _isLoading = true;
    notifyListeners();

    _repository.getNews(
        searchType: _searchType, keyword: _keyword, category: _category);

    _isLoading = false;
    notifyListeners();
  }
}
