

class Movie {
  final String id;
  final String title;
  final String description;
  final String imagePath;
  final double price;

  const Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.price,
  });
}

class MovieRepository {
  /// Returns a list of mock movie items with valid local asset paths.
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'movie_001',
        title: 'Clayface',
        description: 'A terrifying dark thriller following Gotham’s morphing villain.',
        imagePath: 'assets/images/clayface.jpg',
        price: 10.50,
      ),
      Movie(
        id: 'movie_002',
        title: 'Dune: Part Three',
        description: 'The epic climax of Paul Atreides’ journey across Arrakis.',
        imagePath: 'assets/images/dune3.jpg',
        price: 12.00,
      ),
    ];
  }
}