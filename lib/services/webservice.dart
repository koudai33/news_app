import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/newsArticle.dart';

class Webservice {
  Future<List <NewsArticle>> fetchTopHeadlines() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=jp&apiKey=c9711d7821a24215b2b8b74c90fe743f";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);

      Iterable list = result["article"];

      return list.map((article) => NewsArticle.formJSON(article)).toList();
    } else {
      throw Exception("fialed to get top news");
    }
  }
}
