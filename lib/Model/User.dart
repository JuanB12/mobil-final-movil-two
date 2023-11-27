class Usuario {
  final int id;
  String nombre;
  String apellido;
  String contrasena;
  String genero;
  String telefono;
  String correo_electronico;

  Usuario(
      {required this.id,
      required this.nombre,
      required this.apellido,
      required this.contrasena,
      required this.genero,
      required this.telefono,
      required this.correo_electronico});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nombre: json['nombre'],
      apellido: json['apellido'],
      contrasena: json['contrasena'],
      genero: json['genero'],
      telefono: json['telefono'],
      correo_electronico: json['correo_electronico'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'apellido': apellido,
      'contrasena': contrasena,
      'genero': genero,
      'telefono': telefono,
      'correo_electronico': correo_electronico,
    };
  }
}
