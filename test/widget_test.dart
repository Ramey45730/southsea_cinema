import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/views/movie_listing.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

void main() {
  test('formats movie prices in pounds', () {
    const movie = Movie(
      id: 'movie_test',
      title: 'Test Movie',
      description: 'A test movie.',
      imagePath: 'assets/images/clayface.jpeg',
      price: 10.5,
    );

    expect(movie.formattedPrice, '£10.50');
  });

  testWidgets('Basic app loading test', (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());
    expect(find.text('Welcome to Southsea Cinema'), findsOneWidget);
    expect(find.byType(MovieCard), findsNWidgets(2));
    expect(find.text('Clayface'), findsOneWidget);
    expect(find.text('Dune: Part Three'), findsOneWidget);
    expect(find.text('£10.50'), findsOneWidget);
    expect(find.text('£12.00'), findsOneWidget);
    expect(tester.widget<Card>(find.byType(Card).first).color, cinemaSurface);

    await tester.tap(find.text('Dune: Part Three'));
    await tester.pumpAndSettle();
    expect(find.byType(MovieListing), findsOneWidget);
    expect(find.text('Dune: Part Three'), findsOneWidget);
    expect(find.text('£12.00'), findsOneWidget);
  });
}
