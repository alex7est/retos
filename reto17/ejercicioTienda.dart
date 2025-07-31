class Tienda {
  static const String nombre = "La Tienda";
  static String anuncio = "Grandes ofertas!";
  static int _productosVendidos = 0;

  static void cambiarAnuncio(String nuevoAnuncio) {
    anuncio = nuevoAnuncio;
  }

  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  final String codigo;
  String? descripcion;
  double? precio;
  dynamic observacion;

  Producto(this.codigo);

  void registrarVenta(String descripcion, double nuevoPrecio, dynamic obs) {
    this.descripcion = descripcion;
    this.precio = nuevoPrecio;
    this.observacion = obs;
    Tienda.aumentarVentas();
    print("Venta registrada para el producto: $codigo");
  }

  void resumen() {
    print("\n--- Ficha de Producto ---");
    print("${Tienda.nombre} - Anuncio: ${Tienda.anuncio}");
    print("Código: $codigo");
    print("Descripción: ${descripcion ?? 'Sin descripción'}");
    print("Precio: \$${precio ?? 'Sin asignar'}");
    print("Observación: ${observacion ?? 'Ninguna'}");
    print("-------------------------");
  }
}

void main() {
  final producto1 = Producto("LAP-001");
  final producto2 = Producto("MOUSE-002");
  print(
    "Se han creado dos productos: ${producto1.codigo} y ${producto2.codigo}.",
  );

  print("\nRegistrando ventas...");
  producto1.registrarVenta("Laptop", 1250.50, "Garantía extendida por 2 años.");
  producto2.registrarVenta("Mouse", 49.99, true);

  print("\nCambiando el anuncio de la tienda...");
  Tienda.cambiarAnuncio("Oferta de liquidación!");

  producto1.resumen();
  producto2.resumen();

  final totalVentas = Tienda.obtenerVentas();
  print("\n*** Reporte de Ventas ***");
  print("Total de productos vendidos: $totalVentas");
}
