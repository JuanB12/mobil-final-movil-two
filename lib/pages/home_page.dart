import 'package:flutter/material.dart';
import 'inicio_sesion.dart';
import '../pages/registro_form.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/page_view.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 50.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Bienvenido',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '¡Bienvenido a nuestra aplicación, explora nuestros servicios y disfruta nuestra app!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'Raleway',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InicioSesionForm()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.white,
                    minimumSize: Size(200.0, 50.0),
                    textStyle: TextStyle(fontSize: 20.0),
                  ),
                  child: Text('Iniciar Sesión'),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistroForm()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.orange,
                    minimumSize: Size(200.0, 50.0),
                    textStyle: TextStyle(fontSize: 20.0),
                  ),
                  child: Text('Registro'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}