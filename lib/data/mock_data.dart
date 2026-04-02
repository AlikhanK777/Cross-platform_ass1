import '../models/movie.dart';

class MovieService {
  static Future<List<Movie>> getMovies() async {
    // Небольшая задержка, чтобы эмулятор на Acer Nitro работал стабильнее
    await Future.delayed(const Duration(milliseconds: 500));
    
    return [
      Movie(
        id: '1',
        title: 'Интерстеллар',
        subtitle: 'Mankind was born on Earth.',
        genre: 'Sci-Fi',
        imageUrl: 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/603f775a-ab7e-413d-83d7-839ed828cdf4/3840x',
        backdropUrl: 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/603f775a-ab7e-413d-83d7-839ed828cdf4/orig',
        rating: 8.7, year: 2014, durationMinutes: 169,
        director: 'Кристофер Нолан', cast: ['Мэттью Макконахи'],
        description: 'Путешествие исследователей сквозь червоточину в поисках нового дома.',
      ),
      Movie(
        id: '2',
        title: 'Начало',
        subtitle: 'Your mind is the scene of the crime.',
        genre: 'Sci-Fi',
        imageUrl: 'https://avatars.mds.yandex.net/get-ott/18701600/2a0000019caefd1a3615efb6d97f97629c29/600x900',
        backdropUrl: 'https://avatars.mds.yandex.net/get-ott/18701600/2a0000019caefd1a3615efb6d97f97629c29/orig',
        rating: 8.7, year: 2010, durationMinutes: 148,
        director: 'Кристофер Нолан', cast: ['Леонардо Ди Каприо'],
        description: 'Искусство извлечения ценных секретов из глубин подсознания во время сна.',
      ),
      Movie(
        id: '3',
        title: 'Темный рыцарь',
        subtitle: 'Why So Serious?',
        genre: 'Action',
        imageUrl: 'https://avatars.mds.yandex.net/get-ott/1648503/2a0000019c572574c2a230ea76c61bb69b70/600x900',
        backdropUrl: 'https://avatars.mds.yandex.net/get-ott/1648503/2a0000019c572574c2a230ea76c61bb69b70/orig',
        rating: 8.5, year: 2008, durationMinutes: 152,
        director: 'Кристофер Нолан', cast: ['Кристиан Бэйл', 'Хит Леджер'],
        description: 'Бэтмен поднимает ставки в войне с криминалом в Готэме.',
      ),
      Movie(
        id: '4',
        title: 'Бойцовский клуб',
        subtitle: 'Mischief. Mayhem. Soap.',
        genre: 'Drama',
        imageUrl: 'https://avatars.mds.yandex.net/get-ott/1672343/2a0000019a2f25469292045d741a2afdddd3/600x900',
        backdropUrl: 'https://avatars.mds.yandex.net/get-ott/1672343/2a0000019a2f25469292045d741a2afdddd3/orig',
        rating: 8.7, year: 1999, durationMinutes: 139,
        director: 'Дэвид Финчер', cast: ['Брэд Питт', 'Эдвард Нортон'],
        description: 'Сотрудник страховой компании страдает хронической бессонницей и отчаянно пытается вырваться из мучительно скучной жизни.',
      ),
      Movie(
        id: '5',
        title: 'Леон',
        subtitle: 'A perfect killer. An innocent child.',
        genre: 'Action',
        imageUrl: 'https://avatars.mds.yandex.net/get-kinopoisk-image/6201401/8662d92a-5881-4600-a7ae-549e6fd53b03/600x900',
        backdropUrl: 'https://avatars.mds.yandex.net/get-kinopoisk-image/6201401/8662d92a-5881-4600-a7ae-549e6fd53b03/orig',
        rating: 8.7, year: 1994, durationMinutes: 110,
        director: 'Люк Бессон', cast: ['Жан Рено', 'Натали Портман'],
        description: 'Профессиональный киллер берет под свою опеку двенадцатилетнюю девочку.',
      ),
      Movie(
        id: '6',
        title: 'Джентльмены',
        subtitle: 'Crime is a stylish business.',
        genre: 'Action',
        imageUrl: 'https://avatars.mds.yandex.net/get-ott/2385704/2a0000019854f2d5c8ce13461055033ab990/600x900',
        backdropUrl: 'https://avatars.mds.yandex.net/get-ott/2385704/2a0000019854f2d5c8ce13461055033ab990/orig',
        rating: 8.5, year: 2019, durationMinutes: 113,
        director: 'Гай Ричи', cast: ['Мэттью Макконахи'],
        description: 'Криминальный авторитет пытается продать свою империю в Лондоне.',
      ),
      Movie(
        id: '7',
        title: 'Зеленая миля',
        subtitle: 'Miracles happen in unexpected places.',
        genre: 'Drama',
        imageUrl: 'https://avatars.mds.yandex.net/get-kinopoisk-image/1599028/4057c4b8-8208-4a04-b169-26b0661453e3/600x900',
        backdropUrl: 'https://avatars.mds.yandex.net/get-kinopoisk-image/1599028/4057c4b8-8208-4a04-b169-26b0661453e3/orig',
        rating: 9.1, year: 1999, durationMinutes: 189,
        director: 'Фрэнк Дарабонт', cast: ['Том Хэнкс'],
        description: 'История о необычном заключенном в тюрьме для смертников.',
      ),
    ];
  }
}