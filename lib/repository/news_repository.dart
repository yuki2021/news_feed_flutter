import 'package:news_feed_flutter2/data/category_info.dart';
import 'package:news_feed_flutter2/data/search_type.dart';

class NewsRepository {
  Future<void> getNews(
      {required SearchType searchType,
      String? keyword,
      Category? category}) async {}
}
