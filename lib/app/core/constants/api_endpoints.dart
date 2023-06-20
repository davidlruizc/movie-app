class Api {
  static String uri = "https://api.themoviedb.org/3";
  static String getToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhZjZmZjBiODQzNzQxMzBmM2NhMWQ4MmVlZTYzZmNkMyIsInN1YiI6IjVmMjBjZjFiNWIyZjQ3MDAzNjRiMjI1YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.LtHxoMCoICwQWo9ia5sPqtTMSEgZU-TJ1nJZ2E-9sU0";
}

class MoviesEndpoints {
  static String getPopularMovies = "${Api.uri}/movie/popular?page=";
}
