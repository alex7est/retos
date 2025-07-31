void main() {
  List<String> comidasFavoritas = [
    'Pizza',
    'Sushi',
    'Tacos',
    'Ensalada',
    'Hamburguesa',
    'Pasta',
    'Curry',
    'Paella',
    'Sopa',
    'Burrito',
  ];

  comidasFavoritas.add('Ceviche');

  comidasFavoritas.remove('Sopa');

  print("Comida favorita en la posición 2: ${comidasFavoritas[2]}");

  List<List<String>> menuSemanal = [
    ['Pizza', 'Sushi', 'Sopa'],
    ['Tacos', 'Ensalada', 'Ceviche'],
    ['Hamburguesa', 'Pasta', 'Pudín'],
    ['Curry', 'Paella', 'Flan'],
    ['Burrito', 'Ceviche', 'Tacos'],
    ['Pizza', 'Sushi', 'Ensalada'],
    ['Hamburguesa', 'Pasta', 'Curry'],
  ];

  print("Almuerzo del martes: ${menuSemanal[1][1]}");

  menuSemanal[4][2] = 'Sopa';

  print("Cena del viernes: ${menuSemanal[4][2]}");

  for (int i = 0; i < menuSemanal.length; i++) {
    String dia = '';
    switch (i) {
      case 0:
        dia = "Lunes";
        break;
      case 1:
        dia = "Martes";
        break;
      case 2:
        dia = "Miércoles";
        break;
      case 3:
        dia = "Jueves";
        break;
      case 4:
        dia = "Viernes";
        break;
      case 5:
        dia = "Sábado";
        break;
      case 6:
        dia = "Domingo";
        break;
    }
    print("Menú del ${dia}: ${menuSemanal[i].join(', ')}");
  }
}
