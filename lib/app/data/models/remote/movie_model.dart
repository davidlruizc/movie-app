class MovieModel {
  final int id;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final double voteCount;

  MovieModel({
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count']);
}

class MovieListModel {
  final int page;
  final List<MovieModel> results;

  MovieListModel({required this.page, required this.results});

  factory MovieListModel.fromJson(Map<String, dynamic> json) =>
      MovieListModel(page: json['page'], results: json['results']);
}
