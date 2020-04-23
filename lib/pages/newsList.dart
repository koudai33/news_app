import 'package:flutter/material.dart';
import 'package:news_app/viewmodels/newsArticleListViewModel.dart';

class NewsList extends StatelessWidget {
  NewsArticleListViewModel _newsArticleListViewModel =
      NewsArticleListViewModel();

  NewsList() {
    _newsArticleListViewModel.populateTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Text("text"),
    );
  }
}
