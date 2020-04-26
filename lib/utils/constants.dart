class Constants {
  static String TOP_HEADLINES_URL =
      "http://newsapi.org/v2/top-headlines？country = jp＆apiKey = c9711d7821a24215b2b8b74c90fe743f";

  static String headlinesFor(String keyword) {
    return "http://newsapi.org/v2/top-headlines？q=$keyword＆apiKey = c9711d7821a24215b2b8b74c90fe743f";
  }
}
