import 'package:flutter/material.dart';

class NewsTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: RichText(
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
          ),
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
                text: 'Headline',
              ),
              Tab(
                text: 'Business',
              ),
              Tab(
                text: 'Entertaiment',
              ),
              Tab(
                text: 'General',
              ),
              Tab(
                text: 'Health',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('headline'),
            Text('business'),
            Text('entertaiment'),
            Text('general'),
            Text('health'),
          ],
        ),
      ),
    );
  }
}
