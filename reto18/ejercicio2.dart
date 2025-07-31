void main() {
  Map<String, int> puntajes = {
    'Ana': 1200,
    'Luis': 950,
    'Marta': 1500,
    'Leo': 1100,
    'Sofia': 1300,
  };

  print(puntajes.keys);

  print(puntajes['Marta']);

  puntajes['Ana'] = 1275;

  puntajes['Rebeca'] = 1350;

  puntajes.remove('Luis');

  print(puntajes);
}
