import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/buttom_custom.dart';
import 'package:peliculas_app/widgets/square_custom.dart';
import 'package:peliculas_app/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {

  LoginScreen({Key? key}) : super(key: key);

  //text editing controller
final usernameController = TextEditingController();
final passwordController = TextEditingController();

//Metodo Iniciar Sesion
void singUserIn(){

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white24,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 10),
                //Logo
                Icon(
                  Icons.movie_filter_rounded,
                  size: 100,
                  color: Colors.lightBlue.shade900,
                ),

                const SizedBox(height: 20),
                //Mensaje Bienvenida
                Text(
                  '¡Bienvenido a TMDB APP!',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16
                  ),
                ),

                const SizedBox(height: 25),

                //Usuario Textfield
                TextFieldCustom(
                  controller: usernameController,
                  hintText: 'Usuario',
                  obscureText: false,
                ),

                const SizedBox(height: 25),

                //Contraseña Textfield
                TextFieldCustom(
                  controller: passwordController,
                  hintText: 'Contraseña',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                //Recuperar Contraseña
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '¿Olvidaste tu Contraseña?',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // Boton de Iniciar Sesion
                ButtomCustom(
                  onTap: singUserIn,
                ),
                const SizedBox(height: 40),
                //o Continuar con...
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                  )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Inicia Sesión con Google',
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                  )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                //google Autenticacion - Boton
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  //google
                  SquareCustom(imagePath: 'assets/google.png'),

                  SizedBox(width: 10,),
                  //apple 
                  SquareCustom(imagePath: 'assets/apple.png')
                  ],
                ),
                const SizedBox(height: 10,),
                //Registrate ahora}
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿No tienes cuenta?',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      'Registrate Ahora',
                      style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}