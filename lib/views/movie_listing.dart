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
      appBar: AppBar(title: const Text(appTitle, style: cinemaHeaderStyle), backgroundColor: cinemaSurface, iconTheme: const IconThemeData(color: cinemaBrand), elevation: 0),
      drawer: const NavDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Featured Movie Title', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('The best movie this october!'),
            const SizedBox(height: 16),
            DropdownMenu<int>(
              initialSelection: _ticketQuantity,
              onSelected: (val) => setState(() => _ticketQuantity = val ?? 1),
              dropdownMenuEntries: List.generate(5, (i) => DropdownMenuEntry(value: i + 1, label: '${i + 1}')),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => setState(() => _bookingMessage = 'Added $_ticketQuantity tickets to the order'),
              child: const Text('Add to order'),
            ),
            const SizedBox(height: 8),
            Text(_bookingMessage),
          ],
        ),
      ),
    );
  }
}