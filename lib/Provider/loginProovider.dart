import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginProvider {
  static Future<Map<String, dynamic>> verificarUsuario(String nombreUsuario, String contrasena) async {
    String apiUrl = 'https://jbarrios.pythonanywhere.com/parcial/usuario';

    Map<String, dynamic> requestBody = {
      "nombreusuario": nombreUsuario,
      "contrasena": contrasena,
    };

    try {
      var response = await http.post(
        Uri.parse(apiUrl),
        body: json.encode(requestBody),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Error de red: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}