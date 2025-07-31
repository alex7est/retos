class Taller {
  static const String nombre = "Taller";
  static String mensajeGeneral = "Bienvenido al taller";
  static int _totalReparaciones = 0;

  static void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  static void incrementarContador() {
    _totalReparaciones++;
  }

  static int obtenerReparaciones() {
    return _totalReparaciones;
  }
}

class Empleado {
  final String nombre;

  Empleado(this.nombre);

  void actualizarMensajeDelTaller(String nuevoMensaje) {
    print("\n$nombre está actualizando el mensaje del taller...");
    Taller.cambiarMensaje(nuevoMensaje);
  }
}

class Vehiculo {
  final String placa;
  String? diagnostico;
  String estado = "Pendiente";
  dynamic extraInfo;

  Vehiculo(this.placa);

  void registrarDiagnostico(String textoDiagnostico) {
    this.diagnostico = textoDiagnostico;
    this.estado = "Reparado";
    Taller.incrementarContador();
    print("Diagnóstico registrado para el vehículo $placa.");
  }

  void resumen() {
    print("\n--- Resumen del Vehículo ---");
    print("${Taller.mensajeGeneral} - ${Taller.nombre}");
    print("Placa: $placa");
    print("Estado: $estado");
    print("Diagnóstico: ${diagnostico ?? 'Aún no diagnosticado'}");
    print("Información Extra: ${extraInfo ?? 'Ninguna'}");
    print("----------------------------");
  }
}

void main() {
  final carlos = Empleado("Carlos");

  carlos.actualizarMensajeDelTaller("Mensaje actualizado");

  final vehiculo1 = Vehiculo("GRD-6001");
  final vehiculo2 = Vehiculo("PLT-2101");
  print("\nSe han creado 2 vehículos.");

  vehiculo1.registrarDiagnostico("Fallo general del motor.");
  vehiculo2.registrarDiagnostico("Fallo en el sistema de frenos.");

  vehiculo1.extraInfo = "El cliente necesita el carro para mañana.";
  vehiculo2.extraInfo = 150.75;

  vehiculo1.resumen();
  vehiculo2.resumen();

  final totalReparados = Taller.obtenerReparaciones();
  print("\n*** Reporte Final del Taller ***");
  print("Total de vehículos reparados: $totalReparados");
}
