import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/registro_form.dart';
import 'inicio_sesion.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Parcial final",
      home: MyHomePage(),
      initialRoute: '/home',
      routes: {
        // navegación
        '/home': (context) => MyHomePage(),
        '/inicio_sesion': (context) => InicioSesionForm(),
        '/registro':(context) => RegistroForm(),
        // '/':(context) =>
      },
    );
  }
}
