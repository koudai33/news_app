import 'package:flutter/material.dart';
import 'package:news_app/models/newsArticle.dart';
import 'package:news_app/services/webservice.dart';
import 'package:news_app/viewmodels/newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();

  void populateTopHeadlines() async {
    List<NewsArticle> newsArticles = await Webservice().fetchTopHeadlines();
    newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    notifyListeners();
  }
}
