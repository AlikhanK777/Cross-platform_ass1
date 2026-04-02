import 'package:flutter/material.dart';
import '../models/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    movie.backdropUrl ?? movie.imageUrl,
                    fit: BoxFit.cover,
                    cacheWidth: 800, // Решает проблему тормозов
                    errorBuilder: (ctx, err, stack) => Container(color: Colors.grey[900]),
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black87],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('${movie.year} • ${movie.genre} • ${movie.rating} ⭐', 
                       style: const TextStyle(fontSize: 16, color: Colors.blueAccent)),
                  const SizedBox(height: 20),
                  Text(movie.description, style: const TextStyle(fontSize: 16, height: 1.5)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}