import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 1;
  String _bookingMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cinemaSurface,
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Featured Movie Title',
                style: TextStyle(
                  fontSize: 22,
                  color: cinemaFontWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'A short and captivating description.',
              style: TextStyle(
                color: cinemaFontMuted,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 40),
            DropdownMenu<int>(
              initialSelection: _ticketQuantity,
              onSelected: (val) => setState(() => _ticketQuantity = val ?? 1),
              dropdownMenuEntries: List.generate(5, (i) => DropdownMenuEntry(value: i + 1, label: '${i + 1}')),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: cinemaBrand,
                foregroundColor: cinemaFontWhite,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () => setState(() => _bookingMessage = 'Added $_ticketQuantity tickets to the order'),
              child: const Text('Add to order'),
            ),
            const SizedBox(height: 12),
            Text(
              _bookingMessage,
              style: const TextStyle(
                color: cinemaFontWhite,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}