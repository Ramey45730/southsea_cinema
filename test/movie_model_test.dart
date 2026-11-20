import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie', () {
    test('assigns constructor properties', () {
      const movie = Movie(
        id: 'movie_001',
        title: 'Clayface',
        description: 'A dark thriller.',
        imagePath: 'assets/images/clayface.jpeg',
        price: 10.5,
      );

      expect(movie.id, 'movie_001');
      expect(movie.title, 'Clayface');
      expect(movie.description, 'A dark thriller.');
      expect(movie.imagePath, 'assets/images/clayface.jpeg');
      expect(movie.price, 10.5);
    });

    group('formattedPrice', () {
      test('formats whole-pound prices with two decimal places', () {
        const movie = Movie(
          id: 'movie_001',
          title: 'Clayface',
          description: 'A dark thriller.',
          imagePath: 'assets/images/clayface.jpeg',
          price: 10,
        );

        expect(movie.formattedPrice, '£10.00');
      });

      test('formats prices with pence to two decimal places', () {
        const movie = Movie(
          id: 'movie_002',
          title: 'Dune: Part Three',
          description: 'An epic adventure.',
          imagePath: 'assets/images/dune3.jpg',
          price: 12.5,
        );

        expect(movie.formattedPrice, '£12.50');
      });
    });
  });
}
