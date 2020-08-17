import 'package:news_app/news/data/model/news.dart';
import 'package:news_app/news/data/repo/news_repo.dart';

void main() async {
  List<News> news = await NewsRepo.fetchQueryNews(category: 'business');
  print(news.length);
  // print(news[0].title);
  // print(news[0].author);
  // print(news[0].publishedAt);
  // print(news[0].description);
  // print(news[0].content);
  // print(news[0].url);
  // print(news[0].imageUrl);
}
