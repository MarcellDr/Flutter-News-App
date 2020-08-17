import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class News implements Equatable {
  final String title;
  final String author;
  final String publishedAt;
  final String description;
  final String content;
  final String url;
  final String imageUrl;

  News({
    @required this.title,
    @required this.author,
    @required this.publishedAt,
    @required this.description,
    @required this.content,
    @required this.url,
    @required this.imageUrl,
  });

  @override
  List<Object> get props =>
      [title, author, publishedAt, description, content, url, imageUrl];

  @override
  bool get stringify => throw UnimplementedError();
}
