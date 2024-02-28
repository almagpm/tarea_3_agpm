import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'dart:io';

import 'transition.dart'; // Importa la clase de transición

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}



class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea 3'),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xFFB1BDC2), 
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ShakeTransition(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: kToolbarHeight + 20),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Color(0xFF3D4B66), // Color de fondo del texto "Regístrate"
                        borderRadius: BorderRadius.circular(20), // Bordes redondeados
                      ), // Color de fondo del texto "Regístrate"
                      child: Center(
                        child: Text(
                          'Regístrate',
                          style: TextStyle(
                            color: Colors.white, // Texto blanco
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF5C80BC), // Color de fondo del formulario
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                        border: InputBorder.none,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Por favor ingresa tu email';
                                        } else if (!EmailValidator.validate(value)) {
                                          return 'Ingresa un email valido';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        labelText: 'Contraseña',
                                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                        border: InputBorder.none,
                                      ),
                                      obscureText: true,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Por favor ingresa tu contraseña';
                                        } else if (value.length < 6) {
                                          return 'La contraseña debe tener al menos 6 caracteres';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Si el formulario es válido, navega a la ruta /onboarding
              Navigator.pushNamed(context, '/onboarding');
            }
          },
          child: Text(
            'Iniciar sesión',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
