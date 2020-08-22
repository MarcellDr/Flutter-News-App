import 'package:flutter/material.dart';
import 'package:news_app/news/data/model/news.dart';
import 'package:news_app/news/data/repo/news_repo.dart';
import 'package:news_app/news/design/widget/headline_list_item.dart';
import 'package:news_app/news/design/widget/news_list_item.dart';

class HeadlineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Connection Error');
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                List<News> headline =
                    (snapshot.data as List<News>).sublist(0, 5);
                if (index == 0) {
                  return HeadlineListItem(headline: headline);
                } else if (index >= 5) {
                  return NewsListItem(
                      news: (snapshot.data as List<News>)[index]);
                } else {
                  return Container();
                }
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
      future: NewsRepo.fetchQueryNews(),
    );
  }
}
