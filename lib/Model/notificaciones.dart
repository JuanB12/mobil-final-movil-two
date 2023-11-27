class Notificaciones {
  final int id;
  String mensaje;
  String fecha_envio;
  String fecha_creacion;
  String fecha_view;
  String fk_usuario;

  Notificaciones({
    required this.id,
    required this.mensaje,
    required this.fecha_envio,
    required this.fecha_creacion,
    required this.fecha_view,
    required this.fk_usuario,
  });

  factory Notificaciones.fromJson(Map<String, dynamic> json) {
    return Notificaciones(
      id: json['id'],
      mensaje: json['mensaje'],
      fecha_envio: json['fecha_envio'],
      fecha_creacion: json['fecha_creacion'],
      fecha_view: json['fecha_view'],
      fk_usuario: json['fk_usuario'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'mensaje': mensaje,
      'fecha_envio': fecha_envio,
      'fecha_creacion': fecha_creacion,
      'fecha_view': fecha_view,
      'fk_usuario': fk_usuario,
    };
  }
}
