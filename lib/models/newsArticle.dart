class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;
  final String url;

  NewsArticle({this.title, this.description, this.urlToImage, this.url});
//factoryコンストラクタはインスタンスを手動で生成する
  factory NewsArticle.formJSON(Map<String, dynamic> json) {
    return NewsArticle(
      title: json["title"],
      description: json["desctiption"],
      urlToImage: json["urlToImage"],
      url: json["url"],
    );
  }

  static fromJSON(article) {}
}
