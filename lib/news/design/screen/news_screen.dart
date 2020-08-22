import 'package:flutter/material.dart';
import 'package:news_app/news/data/model/news.dart';
import 'package:news_app/news/data/repo/news_repo.dart';
import 'package:news_app/news/design/widget/news_list_item.dart';

class NewsScreen extends StatelessWidget {
  final String category;

  const NewsScreen({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(category);
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Connection Error');
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return NewsListItem(news: (snapshot.data as List<News>)[index]);
              },
              itemCount: (snapshot.data as List<News>).length,
            );
          }
        } else {
          return Container(
            height: 400,
            child: Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
      future: NewsRepo.fetchQueryNews(category: category),
    );
  }
}
