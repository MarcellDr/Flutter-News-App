import 'package:flutter/material.dart';
import 'package:news_app/news/data/model/news.dart';

class NewsListItem extends StatelessWidget {
  final News news;

  const NewsListItem({Key key, this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                  news.imageUrl ??
                      'https://www.hertrack.com/wp-content/uploads/2018/10/no-image.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              children: [
                Text(
                  news.title,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      news.author ?? '',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      news.publishedAt.substring(0, 10),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
