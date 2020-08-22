import 'package:flutter/material.dart';
import 'package:news_app/news/data/model/news.dart';

class HeadlineListItem extends StatelessWidget {
  final List<News> headline;

  const HeadlineListItem({Key key, this.headline}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  SizedBox(
                    height: 320,
                    width: 240,
                    child: Image.network(
                        headline[index].imageUrl ??
                            'https://www.hertrack.com/wp-content/uploads/2018/10/no-image.jpg',
                        fit: BoxFit.cover),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        color: Color.fromARGB(100, 0, 0, 0),
                        width: 240,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              headline[index].title,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  headline[index].author,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  headline[index].publishedAt.substring(0, 10),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          );
        },
        itemCount: headline.length,
      ),
    );
  }
}
