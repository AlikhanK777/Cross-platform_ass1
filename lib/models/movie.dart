class Movie {
  final String id;
  final String title;
  final String subtitle;
  final String genre;
  final String imageUrl;
  final String? backdropUrl;
  final double rating;
  final int year;
  final int durationMinutes;
  final String director;
  final List<String> cast;
  final String description;

  Movie({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.genre,
    required this.imageUrl,
    this.backdropUrl,
    required this.rating,
    required this.year,
    required this.durationMinutes,
    required this.director,
    required this.cast,
    required this.description,
  });
}