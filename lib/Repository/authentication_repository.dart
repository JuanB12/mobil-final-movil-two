import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Model/User.dart';
import '../Model/user_login.dart';

class AuthenticationRepository {
  // https://jbarrios.pythonanywhere.com/
  Future<UserLogin> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('https://jbarrios.pythonanywhere.com/parcial/usuario_login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'nombreusuario': username,
        'contrasena': password,
      }),
    );

    if (response.statusCode == 200) {
      return UserLogin.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<Usuario> getUserDetails(String username) async {
    final response = await http.get(
      Uri.parse('https://jbarrios.pythonanywhere.com/parcial/usuario'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> users = jsonDecode(response.body);

      // Encuentra y devuelve los detalles del usuario correspondiente
      final userDetails = users.firstWhere(
            (user) => user['nombreusuario'] == username,
        orElse: () => null,
      );

      if (userDetails != null) {
        return Usuario.fromJson(userDetails);
      } else {
        throw Exception('Usuario no encontrado');
      }
    } else {
      throw Exception('Fallo al cargar el usuario');
    }
  }
}


