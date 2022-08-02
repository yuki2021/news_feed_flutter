import 'package:flutter/material.dart';
import 'package:news_feed_flutter2/view/components/search_bar.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          tooltip: "更新",
          onPressed: () => onRefresh(context),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SearchBar(
                onSearch: (keyword) => getKeywordNews(context, keyword),
              ),
              // CategoryChips(),
              Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onRefresh(BuildContext context) {}

  getKeywordNews(BuildContext context, keyword) {}
}
