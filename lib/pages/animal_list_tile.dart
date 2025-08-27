import 'package:flutter/material.dart';
import '../models/animal.dart';
import '../utils/favorites_manager.dart';
import '../pages/animal_detail_page.dart';

class AnimalListTile extends StatefulWidget {
  final Animal animal;

  const AnimalListTile({Key? key, required this.animal}) : super(key: key);

  @override
  State<AnimalListTile> createState() => _AnimalListTileState();
}

class _AnimalListTileState extends State<AnimalListTile> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavoriteStatus();
  }

  void _loadFavoriteStatus() async {
    List<String> favorites = await FavoritesManager.loadFavorites();
    setState(() {
      isFavorite = favorites.contains(widget.animal.name);
    });
  }

  void _toggleFavorite() async {
    List<String> favorites = await FavoritesManager.loadFavorites();

    setState(() {
      if (isFavorite) {
        favorites.remove(widget.animal.name);
        isFavorite = false;
      } else {
        favorites.add(widget.animal.name);
        isFavorite = true;
      }
    });

    await FavoritesManager.saveFavorites(favorites);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 60,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            widget.animal.imageUrl,
            fit: BoxFit.cover,
            alignment: (widget.animal.name == 'Maviş' && widget.animal.species == 'Kuş')
                ? Alignment(0, -1.0)
                : Alignment.center,
          ),
        ),
      ),
      title: Text(widget.animal.name),
      subtitle: Text('${widget.animal.species} - ${widget.animal.age} yaşında'),
      trailing: IconButton(
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
        color: Colors.red,
        onPressed: _toggleFavorite,
      ),

      // Tıklayınca detay sayfasına yönlendir
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimalDetailPage(animal: widget.animal),
          ),
        );
      },
    );
  }
}
