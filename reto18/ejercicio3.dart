class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);
}

void main() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [Pelicula('The Irishman', 2019), Pelicula('Glass Onion', 2022)],
    'HBO': [Pelicula('The Batman', 2022), Pelicula('Dune', 2021)],
    'Disney+': [Pelicula('Avengers: Endgame', 2019), Pelicula('Soul', 2020)],
  };

  for (final pelicula in catalogoStreaming['Netflix']!) {
    print(pelicula.titulo);
  }

  catalogoStreaming['Disney+']!.add(Pelicula('Turning Red', 2022));

  catalogoStreaming['HBO']![1].anioEstreno = 2020;

  catalogoStreaming['Netflix']!.removeAt(0);

  catalogoStreaming.forEach((plataforma, peliculas) {
    print('\nPlataforma: $plataforma');
    for (final pelicula in peliculas) {
      print('- ${pelicula.titulo} (${pelicula.anioEstreno})');
    }
  });
}
