import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository', () {
    late MovieRepository repository;

    setUp(() {
      repository = MovieRepository();
    });

    group('getMovies', () {
      test('returns the mock movies with their expected details', () {
        final movies = repository.getMovies();

        expect(movies, hasLength(2));
        expect(movies[0].id, 'movie_001');
        expect(movies[0].title, 'Clayface');
        expect(
          movies[0].description,
          'A terrifying dark thriller following Gotham’s morphing villain.',
        );
        expect(movies[0].imagePath, 'assets/images/clayface.jpeg');
        expect(movies[0].price, 10.50);

        expect(movies[1].id, 'movie_002');
        expect(movies[1].title, 'Dune: Part Three');
        expect(
          movies[1].description,
          'The epic climax of Paul Atreides’ journey across Arrakis.',
        );
        expect(movies[1].imagePath, 'assets/images/dune3.jpg');
        expect(movies[1].price, 12.00);
      });
    });

    group('getMovieById', () {
      test('returns the movie with the matching ID', () {
        final movie = repository.getMovieById('movie_002');

        expect(movie, isNotNull);
        expect(movie!.title, 'Dune: Part Three');
      });

      test('returns null when the ID is not found', () {
        expect(repository.getMovieById('missing'), isNull);
      });
    });
  });
}
