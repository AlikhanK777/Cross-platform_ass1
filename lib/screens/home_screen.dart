import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/movie.dart';
import '../widgets/movie_card.dart';
import '../widgets/category_badge.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movie>> _moviesFuture;
  String selectedGenre = 'All'; // Текущий выбранный жанр

  @override
  void initState() {
    super.initState();
    _moviesFuture = MovieService.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Explorer')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Categories', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: ['All', 'Sci-Fi','Action','Drama'].map((genre) => 
                CategoryBadge(
                  label: genre, 
                  isSelected: selectedGenre == genre,
                  onTap: () {
                    setState(() {
                      selectedGenre = genre; // Фильтрация при нажатии
                    });
                  },
                )
              ).toList(),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Movie>>(
              future: _moviesFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                final allMovies = snapshot.data ?? [];
                
                // Фильтруем список по выбранному жанру
                final filteredMovies = selectedGenre == 'All' 
                    ? allMovies 
                    : allMovies.where((m) => m.genre == selectedGenre).toList();

                return ListView.builder(
                  itemCount: filteredMovies.length,
                  itemBuilder: (context, index) => MovieCard(
                    movie: filteredMovies[index],
                    onTap: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => DetailScreen(movie: filteredMovies[index]))
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}