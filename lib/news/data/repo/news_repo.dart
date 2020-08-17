import 'package:news_app/news/data/model/news.dart';
import 'package:dio/dio.dart';

class NewsRepo {
  static Future<List<News>> fetchQueryNews(
      {String query, String category}) async {
    const String API_KEY = '2839840cec844fbfbb3bd7fc47fdac01';
    final String q = query != null ? 'q=$query&' : '';
    final String c = category != null ? 'category=$category&' : '';
    final String url =
        'https://newsapi.org/v2/top-headlines?$q${c}apiKey=$API_KEY';
    print(url);
    var response = await Dio().get(url);
    List<dynamic> data = response.data['articles'];
    List<News> news = [];
    data.forEach((v) {
      news.add(News(
        title: v['title'],
        author: v['author'],
        publishedAt: v['publishedAt'],
        description: v['description'],
        content: v['content'],
        url: v['url'],
        imageUrl: v['urlToImage'],
      ));
    });
    return news;
  }
}
