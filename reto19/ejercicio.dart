Future<String> freirHuevos() async {
  print("🍳 Poniendo los huevos en la sartén...");
  await Future.delayed(Duration(seconds: 3));
  return "\n✅ ¡Huevos fritos listos!";
}

void prepararCafe() {
  print("☕ Preparando un café rápido.");
}

void prepararTostadas() {
  print("🍞 Poniendo el pan en la tostadora.");
}

Future<String> descargarReporte() async {
  print("🌐 Conectando al servidor para descargar el reporte...");
  await Future.delayed(Duration(seconds: 4));
  return "📄 Reporte.pdf";
}

void mostrarIndicadorDeCarga() {
  print("🔄 Por favor, espere...");
}

void main() async {
  print("--- Situacion 1: Preparando el Desayuno ---");
  Future<String> resultadoHuevos = freirHuevos();
  prepararCafe();
  prepararTostadas();
  String mensajeFinalHuevos = await resultadoHuevos;
  print(mensajeFinalHuevos);
  print("🍽️ ¡El desayuno está servido!");

  print("\n--- Situacion 2: Descarga de Archivo ---");
  Future<String> reporteDescargado = descargarReporte();
  mostrarIndicadorDeCarga();
  String nombreArchivo = await reporteDescargado;
  print("\n✅ ¡Descarga completada!");
  print("El archivo '$nombreArchivo' está listo.");
}
