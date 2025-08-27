import 'package:flutter/material.dart';
import '../models/animal.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Animal> animals = [
      Animal(
        name: 'Karabaş',
        species: 'Köpek',
        gender: 'Erkek',
        age: 3,
        description: 'Sahiplenilmeyi bekleyen sevimli bir köpek.',
        imageUrl: 'https://images.unsplash.com/photo-1558788353-f76d92427f16?auto=format&fit=crop&w=500&q=60',

      ),
      Animal(
        name: 'Minnak',
        species: 'Kedi',
        gender: 'Dişi',
        age: 2,
        description: 'Oyuncu ve sevecen bir kedi.',
        imageUrl: 'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?q=80&w=1443&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        ,
      ),
      Animal(
        name: 'Pamuk',
        species: 'Tavşan',
        gender: 'Dişi',
        age: 1,
        description: 'Bembeyaz, uysal bir tavşan.',
        imageUrl: 'https://images.unsplash.com/photo-1585110396000-c9ffd4e4b308?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        ,

      ),
      Animal(
        name: 'Maviş',
        species: 'Kuş',
        gender: 'Erkek',
        age: 1,
        description: 'Rengarenk, neşeli bir kuş.',
        imageUrl: 'https://images.unsplash.com/photo-1444464666168-49d633b86797?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        ,

      ),







    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Sahiplenilecek Hayvanlar')),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          Animal animal = animals[index];
          return Card(
            child: ListTile(
              leading: Image.network(animal.imageUrl),
              title: Text(animal.name),
              subtitle: Text('${animal.species} - ${animal.age} yaşında'),
            ),
          );
        },
      ),
    );
  }
}
