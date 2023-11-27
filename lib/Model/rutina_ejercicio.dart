class RutinaEjercicio {
  final int id;
  String nombre_rutina;
  String descripcion_rutina;
  String fk_usuario;

  RutinaEjercicio({
    required this.id,
    required this.nombre_rutina,
    required this.descripcion_rutina,
    required this.fk_usuario,
  });

  factory RutinaEjercicio.fromJson(Map<String, dynamic> json) {
    return RutinaEjercicio(
      id: json['id'],
      nombre_rutina: json['nombre_rutina'],
      descripcion_rutina: json['descripcion_rutina'],
      fk_usuario: json['fk_usuario'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre_rutina': nombre_rutina,
      'descripcion_rutina': descripcion_rutina,
      'fk_usuario': fk_usuario,
    };
  }
}
