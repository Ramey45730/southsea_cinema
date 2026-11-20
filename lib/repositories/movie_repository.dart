import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  /// Returns a list of mock movie items with valid local asset paths.
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'movie_001',
        title: 'Clayface',
        description:
            'A terrifying dark thriller following Gotham’s morphing villain.',
        imagePath: 'assets/images/clayface.jpeg',
        price: 10.50,
      ),
      Movie(
        id: 'movie_002',
        title: 'Dune: Part Three',
        description:
            'The epic climax of Paul Atreides’ journey across Arrakis.',
        imagePath: 'assets/images/dune3.jpg',
        price: 12.00,
      ),
    ];
  }

  Movie? getMovieById(String id) {
    for (final movie in getMovies()) {
      if (movie.id == id) {
        return movie;
      }
    }
    return null;
  }
}
