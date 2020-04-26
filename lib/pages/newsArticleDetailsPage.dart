


import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/viewmodels/newsArticleViewModel.dart';

class NewsArticleDetaislsPage extends StatefulWidget{

  final NewsArticleViewModel article;

  NewsArticleDetaislsPage({this.article});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("${this.article.title}"),

      ),
      body: WebView(
        initialUrl:this.article.url
      ),
    );
  }
}