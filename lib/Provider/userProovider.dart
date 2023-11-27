import 'dart:convert';

import 'package:http/http.dart' as http;

List<Map<String, dynamic>> _users = []; // Lista para almacenar usuarios

Future<void> _login(String user, String pass) async {
  const String apiUrl = 'https://jbarrios.pythonanywhere.com/parcial/usuario';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    _users = List<Map<String, dynamic>>.from(jsonDecode(response.body));

    Map<String, dynamic>? findUser() {
      try {
        return _users.firstWhere(
              (user) =>
          user['nombreusuario'] == user &&
              user['contrasena'] == pass,
        );
      } catch (_) {
        return null;
      }
    }

    Map<String, dynamic>? foundUser = findUser();

    if (foundUser != null) {
      print(foundUser);
    }
  } else {
    // Si la solicitud no fue exitosa, muestra el código de estado.
    print('Error ${response.statusCode}');
  }
}