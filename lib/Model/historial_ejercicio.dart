class HistorialEjercicios {
  final int id;
  String fecha_ejercico;
  String repeticiones;
  String calorias_quemadas;
  String duracion;
  String fk_ejercicio;

  HistorialEjercicios({
    required this.id,
    required this.fecha_ejercico,
    required this.repeticiones,
    required this.calorias_quemadas,
    required this.duracion,
    required this.fk_ejercicio,
  });

  factory HistorialEjercicios.fromJson(Map<String, dynamic> json) {
    return HistorialEjercicios(
      id: json['id'],
      fecha_ejercico: json['fecha_ejercico'],
      repeticiones: json['repeticiones'],
      calorias_quemadas: json['calorias_quemadas'],
      duracion: json['duracion'],
      fk_ejercicio: json['fk_ejercicio'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fecha_ejercico': fecha_ejercico,
      'repeticiones': repeticiones,
      'calorias_quemadas': calorias_quemadas,
      'fecha_view': duracion,
      'fk_usuario': fk_ejercicio,
    };
  }
}
