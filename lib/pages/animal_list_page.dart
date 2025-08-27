import 'package:flutter/material.dart';
import '../models/animal.dart';
import 'animal_list_tile.dart';
import '../pages/favorite_list_page.dart';


class AnimalListPage extends StatelessWidget {
  final String selectedType;

  const AnimalListPage({Key? key, required this.selectedType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Animal> allAnimals = [
      Animal(
          name: 'Karabaş',
          species: 'Köpek',
          gender: 'Erkek',
          age: 3,
          description: 'Sadık ve enerjik.',
          imageUrl: 'https://images.unsplash.com/photo-1503256207526-0d5d80fa2f47?q=80&w=686&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      ),
      Animal(
        name: 'Max',
        species: 'Köpek',
        gender: 'Erkek',
        age: 4,
        description: 'Sadık ve koruyucu.',
        imageUrl: 'https://images.unsplash.com/photo-1596492784531-6e6eb5ea9993?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Animal(
        name: 'Minnoş',
        species: 'Köpek',
        gender: 'Dişi',
        age: 2,
        description: 'Oyuncu ve sevecen.',
        imageUrl: 'https://images.unsplash.com/photo-1532592333381-a141e3f197c9?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Animal(
        name: 'Duman',
        species: 'Köpek',
        gender: 'Erkek',
        age: 3,
        description: 'Soğuk havayı sever, enerjik.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1676389282268-68e11d91d8a4?q=80&w=686&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Animal(
        name: 'Zeytin',
        species: 'Köpek',
        gender: 'Dişi',
        age: 5,
        description: 'Sessiz ve uysal.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1668208365386-4198381c6f6e?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Animal(
        name: 'Kral',
        species: 'Köpek',
        gender: 'Erkek',
        age: 6,
        description: 'Güçlü ve korumacı.',
        imageUrl: 'https://images.unsplash.com/photo-1588943211346-0908a1fb0b01?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Animal(
        name: 'Badem',
        species: 'Köpek',
        gender: 'Dişi',
        age: 2,
        description: 'Neşeli ve oyuncu.',
        imageUrl: 'https://images.unsplash.com/photo-1560525821-d5615ef80c69?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTR8fGRvZ3xlbnwwfHwwfHx8MA%3D%3D',
      ),
      Animal(
        name: 'Cesur',
        species: 'Köpek',
        gender: 'Erkek',
        age: 4,
        description: 'Sadık ve korumacı.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1708983591032-40822c6afa84?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTN8fGRvZ3xlbnwwfHwwfHx8MA%3D%3D',
      ),
      Animal(
        name: 'Pofuduk',
        species: 'Köpek',
        gender: 'Dişi',
        age: 3,
        description: 'Yumuşacık tüyleri var, sevecen.',
        imageUrl: 'https://images.unsplash.com/photo-1566710582818-d673dc761201?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODd8fGRvZ3xlbnwwfHwwfHx8MA%3D%3D',
      ),
      Animal(
        name: 'Leo',
        species: 'Köpek',
        gender: 'Erkek',
        age: 5,
        description: 'Sakin yapıda, çocuklarla iyi anlaşır.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1668208363137-7ebc4ce6b7b7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODl8fGRvZ3xlbnwwfHwwfHx8MA%3D%3D',
      ),

//kedi kısmı


      Animal(
          name: 'Minnak',
          species: 'Kedi',
          gender: 'Dişi',
          age: 2,
          description: 'Oyuncu ve sevecen.',
          imageUrl: 'https://images.unsplash.com/photo-1495360010541-f48722b34f7d?q=80&w=736&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      ),
      Animal(
        name: 'Tekir',
        species: 'Kedi',
        gender: 'Erkek',
        age: 3,
        description: 'Meraklı ve enerjik.',
        imageUrl: 'https://images.unsplash.com/photo-1569492329917-eaddc4e71bc7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHRla2lyJTIwa2VkaXxlbnwwfHwwfHx8MA%3D%3D',
      ),
      Animal(
        name: 'Pamuk',
        species: 'Kedi',
        gender: 'Dişi',
        age: 1,
        description: 'Yumuşacık tüyleriyle sevimli.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1664371674618-be807b763382?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHRla2lyJTIwa2VkaXxlbnwwfHwwfHx8MA%3D%3D',
      ),
      Animal(
        name: 'Zilli',
        species: 'Kedi',
        gender: 'Dişi',
        age: 2,
        description: 'Oyuncu ve insanlara alışkın.',
        imageUrl: 'https://images.unsplash.com/photo-1695310075574-5ce90d9bb522?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dGVraXIlMjBrZWRpfGVufDB8fDB8fHww',
      ),
      Animal(
        name: 'Baron',
        species: 'Kedi',
        gender: 'Erkek',
        age: 4,
        description: 'Sakin ve kendine güvenli.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1674316194408-979a3a6a907a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVraXIlMjBrZWRpfGVufDB8fDB8fHww',
      ),
      Animal(
        name: 'Sütlaç',
        species: 'Kedi',
        gender: 'Dişi',
        age: 3,
        description: 'Sevimli ve nazlı.',
        imageUrl: 'https://images.unsplash.com/photo-1605937666817-52baa7849ffc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVraXIlMjBrZWRpfGVufDB8fDB8fHww',
      ),
      Animal(
        name: 'Şanslı',
        species: 'Kedi',
        gender: 'Erkek',
        age: 2,
        description: 'Çok sosyal ve cana yakın.',
        imageUrl: 'https://images.unsplash.com/photo-1587404787163-d03a28fcc1f0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGVraXIlMjBrZWRpfGVufDB8fDB8fHww',
      ),
      Animal(
        name: 'Pati',
        species: 'Kedi',
        gender: 'Dişi',
        age: 1,
        description: 'Küçük, oyuncu ve çok meraklı.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1664392321975-c96ff960988c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fHRla2lyJTIwa2VkaXxlbnwwfHwwfHx8MA%3D%3D',
      ),


      //tavşan

      Animal(
          name: 'Pamuk',
          species: 'Tavşan',
          gender: 'Dişi',
          age: 1,
          description: 'Tüyleri yumuşak ve sakin.',
          imageUrl: 'https://images.unsplash.com/photo-1585110396000-c9ffd4e4b308?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      ),
      Animal(
        name: 'Fındık',
        species: 'Tavşan',
        gender: 'Erkek',
        age: 2,
        description: 'Sevimli ve oyuncu.',
        imageUrl: 'https://images.unsplash.com/photo-1655483280163-fd7adf0ed4cb?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGF2JUM1JTlGYW58ZW58MHx8MHx8fDA%3D',
      ),
      Animal(
        name: 'Zıpır',
        species: 'Tavşan',
        gender: 'Erkek',
        age: 1,
        description: 'Enerjik ve çok hareketli.',
        imageUrl: 'https://images.unsplash.com/photo-1711348109482-a028ad7e9b6d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dGF2JUM1JTlGYW58ZW58MHx8MHx8fDA%3D',
      ),
      Animal(
        name: 'Pofuduk',
        species: 'Tavşan',
        gender: 'Dişi',
        age: 3,
        description: 'Yumuşacık tüyleri var.',
        imageUrl: 'https://plus.unsplash.com/premium_photo-1668606752372-b19e4255be99?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHRhdiVDNSU5RmFufGVufDB8fDB8fHww',
      ),
      Animal(
        name: 'Sakız',
        species: 'Tavşan',
        gender: 'Dişi',
        age: 2,
        description: 'Nazlı ama çok tatlı.',
        imageUrl: 'https://images.unsplash.com/photo-1608900159668-2ec0d82ad7bb?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHRhdiVDNSU5RmFufGVufDB8fDB8fHww',
      ),
      Animal(
        name: 'Kar',
        species: 'Tavşan',
        gender: 'Erkek',
        age: 4,
        description: 'Tüyleriyle dikkat çeker.',
        imageUrl: 'https://images.unsplash.com/photo-1705903448526-71b0cd6526ba?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHRhdiVDNSU5RmFufGVufDB8fDB8fHww',
      ),


//kuş

      Animal(
          name: 'Maviş',
          species: 'Kuş',
          gender: 'Erkek',
          age: 1,
          description: 'Renkli tüyleriyle dikkat çeker.',
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/A%C3%A7%C4%B1k_mavi_renkte_muhabbet_ku%C5%9Fu.jpg/1200px-A%C3%A7%C4%B1k_mavi_renkte_muhabbet_ku%C5%9Fu.jpg'
      ),

      Animal(
        name: 'Boncuk',
        species: 'Kuş',
        gender: 'Dişi',
        age: 2,
        description: 'Minik ve çok sevimli.',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMFxXvBPgxGmftBLbApYwgRWjijDXdI5b8uw&s',
      ),
      Animal(
        name: 'Cicoz',
        species: 'Kuş',
        gender: 'Dişi',
        age: 1,
        description: 'Sürekli öten neşeli bir kuş.',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0jgxj9taOoyLqkWqxJQwASN_4ZMHuH4n_EQ&s',
      ),
      Animal(
        name: 'Şakir',
        species: 'Kuş',
        gender: 'Erkek',
        age: 3,
        description: 'Renkli tüyleriyle dikkat çeker.',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCRcV8IKk2H7bC0lDnFAjg3fM1cHvTK79Bwg&s',
      ),
      Animal(
        name: 'Parlak',
        species: 'Kuş',
        gender: 'Dişi',
        age: 2,
        description: 'Tüyleri ışıkta parlar.',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST1gXtSB3H95g2bKFKx5_DvVGowLcykDYj7Q&s',
      ),
      Animal(
        name: 'Zümrüt',
        species: 'Kuş',
        gender: 'Erkek',
        age: 4,
        description: 'Parlak yeşil tüyleriyle zarif.',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc_W8aAFeYlvWxVkcKHulQXOHnq2sOIfE0aA&s',
      ),


    ];
    List<Animal> filteredAnimals = allAnimals.where((animal) =>
    animal.species == selectedType).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text('$selectedType Sahiplenme'),
        backgroundColor: const Color(0xFFA8E6CF).withOpacity(0.9), // Mint yeşili
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteListPage(allAnimals: allAnimals),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA8E6CF), Color(0xFFFFD3B6)], // Mint yeşili - Turuncu ton
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: filteredAnimals.length,
          itemBuilder: (context, index) {
            final animal = filteredAnimals[index];
            return AnimalListTile(animal: animal);
          },
        ),
      ),
    );
  }
}
