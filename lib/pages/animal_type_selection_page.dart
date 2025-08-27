import 'package:flutter/material.dart';
import 'animal_list_page.dart';

class AnimalTypeSelectionPage extends StatelessWidget {
  const AnimalTypeSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA8E6CF), Color(0xFFFFD3B6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                const Text(
                  'PetApp',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                ),
                const Icon(
                  Icons.pets,
                  size: 48,
                  color: Colors.orangeAccent,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sahiplenmenin Kolay Yolu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        blurRadius: 3,
                        color: Colors.black26,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Sahiplenmek istediğin hayvan türünü seç:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                buildTypeCard(context, 'Köpek'),
                buildTypeCard(context, 'Kedi'),
                buildTypeCard(context, 'Tavşan'),
                buildTypeCard(context, 'Kuş'),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTypeCard(BuildContext context, String type) {
    String emoji;

    switch (type) {
      case 'Köpek':
        emoji = '🐶';
        break;
      case 'Kedi':
        emoji = '🐱';
        break;
      case 'Tavşan':
        emoji = '🐰';
        break;
      case 'Kuş':
        emoji = '🐦';
        break;
      default:
        emoji = '🐾';
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimalListPage(selectedType: type),
          ),
        );
      },
      child: Card(
        color: Colors.white.withOpacity(0.9),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: const TextStyle(fontSize: 28),
              ),
              const SizedBox(width: 12),
              Text(
                type,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
