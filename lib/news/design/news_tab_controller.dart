import 'package:flutter/material.dart';
import 'package:news_app/news/design/screen/headline_screen.dart';
import 'package:news_app/news/design/screen/news_screen.dart';

class NewsTabController extends StatelessWidget {
  final List<String> categories = [
    'Business',
    'Science',
    'General',
    'Health',
    'Sports',
  ];
  @override
  Widget build(BuildContext context) {
    var appTitle = RichText(
      text: TextSpan(
        text: 'News',
        style: TextStyle(color: Colors.black, fontSize: 18),
        children: <TextSpan>[
          TextSpan(
            text: 'Today',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
    return DefaultTabController(
      length: categories.length + 1,
      child: Scaffold(
        appBar: AppBar(
          title: appTitle,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('Headline'),
              ),
              ...categories
                  .map((c) => Tab(
                        child: Text(c),
                      ))
                  .toList(),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HeadlineScreen(),
            ...categories
                .map(
                  (c) => NewsScreen(category: c),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
