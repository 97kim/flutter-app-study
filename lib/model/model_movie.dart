class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  final String description;
  final String actor;
  final String director;

  Movie.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'],
        description = map['description'],
        actor = map['actor'],
        director = map['director'];

  @override
  String toString() => "Movie($title:$keyword)";
}
