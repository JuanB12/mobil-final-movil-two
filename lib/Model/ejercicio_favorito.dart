class EjercicioFavorito {
  final int id;
  String fk_usuario;
  String fk_ejercicio;

  EjercicioFavorito({
    required this.id,
    required this.fk_usuario,
    required this.fk_ejercicio,
  });

  factory EjercicioFavorito.fromJson(Map<String, dynamic> json) {
    return EjercicioFavorito(
      id: json['id'],
      fk_usuario: json['fk_usuario'],
      fk_ejercicio: json['fk_ejercicio'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fk_usuario': fk_usuario,
      'fk_ejercicio': fk_ejercicio,
    };
  }
}
