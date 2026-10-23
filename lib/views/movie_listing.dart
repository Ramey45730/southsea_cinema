import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Text('Featured Movie Title', style: TextStyle(fontSize: 24)),
            const Text('A short and captivating description.'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => print('Add to order button pressed'),
              child: const Text('Add to order'),
            ),
          ],
        ),
      ),
    );
  }
}
