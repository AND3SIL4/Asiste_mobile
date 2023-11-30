import 'package:asiste/components/text_field.component.dart';
import 'package:asiste/config/routes.config.dart';
import 'package:asiste/config/string.config.dart';
import 'package:asiste/styles/color.style.dart';
import 'package:asiste/styles/text.style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController documentController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Widget que centra todo el contenido de esta pagina
      body: Center(
        // Permite el scroll vertical
        child: SingleChildScrollView(
          // Adiciona padding a los extremos de la pagina
          child: Padding(
            padding: const EdgeInsets.all(24),
            // Widget principal que contine los demas widgets
            child: Column(
              children: [
                Image.asset(
                  'assets/temp/logo-asiste-right.png',
                ), // Logo coorporativo
                const SizedBox(height: 50),
                // Mensaje de bienvenida
                const Text(
                  AppStrings.welcomeToAsiste,
                  textAlign: TextAlign.center,
                  style: AppText.body2,
                ),
                const SizedBox(height: 50), // Agrega espacio
                // Input para el documento del usuario
                TextFieldWidget(
                  labelText: AppStrings.documentInput,
                  isTextHidden: false,
                  prefixIcon: const Icon(Icons.person, color: AppColors.font),
                  helperText: 'Ingrese su documento de identidad',
                  controller: documentController,
                  numericOnly: true,
                ),
                const SizedBox(height: 30), // Aregga espacio
                // Input para el la contrasenia del usuario
                TextFieldWidget(
                  labelText: AppStrings.passwordInput,
                  isTextHidden: true,
                  prefixIcon: const Icon(Icons.lock, color: AppColors.font),
                  sufixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility, color: AppColors.font),
                  ),
                  helperText: 'Ingrese su contraseña',
                  controller: passwordController,
                  numericOnly: false,
                ),
                const SizedBox(height: 50), // Aregga espacio
                // Widget que contiene el boton del llamdo a la accion
                SizedBox(
                  height: 50,
                  width: double.infinity, // Da todo el ancho posible al boton
                  child: ElevatedButton(
                    onPressed: () {
                      // Acceder a los valores de los controladores
                      final int document = int.parse(documentController.text);
                      final String password = passwordController.text;

                      if (document == 123 && password == '123') {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRouters.main);
                      } else {
                        // ignore: avoid_print
                        print('Wrong password');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    child: const Text(
                      AppStrings.singIn,
                      style: AppText.subtitle1,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
