class Ejercicio {
  final int id;
  String nombre_ejercicio;
  String descripcion_ejercicio;
  String repeticiones;
  String fk_rutinaEj;

  Ejercicio({
    required this.id,
    required this.nombre_ejercicio,
    required this.descripcion_ejercicio,
    required this.repeticiones,
    required this.fk_rutinaEj,
  });

  factory Ejercicio.fromJson(Map<String, dynamic> json) {
    return Ejercicio(
      id: json['id'],
      nombre_ejercicio: json['nombre_ejercicio'],
      descripcion_ejercicio: json['descripcion_ejercicio'],
      repeticiones: json['repeticiones'],
      fk_rutinaEj: json['fk_rutinaEj'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre_ejercicio': nombre_ejercicio,
      'descripcion_ejercicio': descripcion_ejercicio,
      'repeticiones': repeticiones,
      'fk_rutinaEj': fk_rutinaEj,
    };
  }
}
