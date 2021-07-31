import 'package:flutter_test/flutter_test.dart';
import 'package:mediteran_film_festival/models/movie.dart';
import 'package:mediteran_film_festival/repository/movies_repository.dart';

main() {
  test("Test API call if work fine", () async {
    final moviesRepository = MoviesRepository.instance;

    final movies = await moviesRepository.getMovies();

    // Display id of movies fetched
    print(movies.length);
    expect(movies, isA<List<Movie>>());
  });
}
