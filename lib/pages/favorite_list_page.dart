import 'package:flutter/material.dart';
import '../models/animal.dart';
import '../utils/favorites_manager.dart';
import 'animal_detail_page.dart';

class FavoriteListPage extends StatefulWidget {
  final List<Animal> allAnimals;

  const FavoriteListPage({Key? key, required this.allAnimals}) : super(key: key);

  @override
  State<FavoriteListPage> createState() => _FavoriteListPageState();
}

class _FavoriteListPageState extends State<FavoriteListPage> {
  List<String> favoriteNames = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  void _loadFavorites() async {
    List<String> favorites = await FavoritesManager.loadFavorites();
    setState(() {
      favoriteNames = favorites;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Animal> favoriteAnimals = widget.allAnimals
        .where((animal) => favoriteNames.contains(animal.name))
        .toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFA8E6CF), Color(0xFFFFD3B6)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            title: const Text('Favoriler'),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA8E6CF), Color(0xFFFFD3B6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: favoriteAnimals.isEmpty
            ? const Center(
          child: Text(
            'Favori hayvan bulunamadı.',
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
        )
            : ListView.builder(
          itemCount: favoriteAnimals.length,
          itemBuilder: (context, index) {
            Animal animal = favoriteAnimals[index];
            return Card(
              color: Colors.white.withOpacity(0.85),
              margin:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(animal.imageUrl),
                ),
                title: Text(animal.name),
                subtitle: Text('${animal.species}, ${animal.age} yaşında'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimalDetailPage(animal: animal),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
