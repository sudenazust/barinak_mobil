import 'package:flutter/material.dart';
import '../models/animal.dart';
import 'adoptionformpage.dart';

class AnimalDetailPage extends StatelessWidget {
  final Animal animal;

  const AnimalDetailPage({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Arka plan görseli
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Image.network(
              animal.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.broken_image, size: 100),
            ),
          ),

          // İçerik kutusu
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      animal.name,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text("Tür: ${animal.species}", style: const TextStyle(color: Colors.white)),
                    Text("Cinsiyet: ${animal.gender}", style: const TextStyle(color: Colors.white)),
                    Text("Yaş: ${animal.age}", style: const TextStyle(color: Colors.white)),
                    const SizedBox(height: 16),
                    const Text(
                      "Açıklama:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(animal.description, style: const TextStyle(color: Colors.white)),
                    const SizedBox(height: 20),

                    // 🔹 Sahiplendirme Formu Butonu
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AdoptionFormPage(animalName: animal.name),
                            ),
                          );
                        },
                        child: const Text("Sahiplendirme Formunu Doldur"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Geri butonu
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
