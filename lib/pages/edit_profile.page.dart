import 'package:asiste/components/dropdown_button.component.dart';
import 'package:asiste/components/toolbar.component.dart';
import 'package:asiste/styles/color.style.dart';
import 'package:asiste/styles/text.style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: 'Editar información de usuario'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.network('http://github.com/and3sil4.png'),
                // Botón (Icono)
                SizedBox(
                  child: IconButton(
                    onPressed: () {
                      print('object');
                    },
                    icon: const Icon(Icons.edit),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Datos personales', style: AppText.header1),
                  const SizedBox(height: 16.0),
                  const Column(
                    children: [
                      DropDownButtonWidget(
                        list: [
                          'Seleccione un tipo de documento*',
                          'C.C',
                          'T.I'
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Tipo de documento',
                    text: 'Ej. C.C',
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Nombres',
                    text: 'Ej. Liam Felipe',
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Apellidos',
                    text: 'Ej. Rodriguez Perez',
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Correo personal',
                    text: 'Ej. correo@personal.com',
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Correo institucional',
                    text: 'Ej. correo@institucional.com',
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Número de celular',
                    text: 'Ej. 3212414545',
                    isOnlyNumber: true,
                  ),
                  const SizedBox(height: 16.0),
                  const DropDownButtonWidget(list: [
                    'Seleccione un genero*',
                    'Femenino',
                    'Masculino',
                    'Bisexual',
                    'Transexual'
                  ]),
                  const SizedBox(height: 16.0),
                  const Text('Datos de usuario', style: AppText.header1),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Nombre de usuario',
                    text: 'Ej. AND3SIL4',
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Correo electronico',
                    text: 'Ej. correo@electronico.com',
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Contraseña',
                    text: 'Ingrese una contraseña segura',
                    isHiddenText: true,
                  ),
                  const SizedBox(height: 16.0),
                  const TextFieldWidget(
                    hintText: 'Confirmar contraseña',
                    text: 'Confirme la contraseña',
                    isHiddenText: true,
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
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
                        'Guardar cambios',
                        style: AppText.subtitle1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.text,
    this.isHiddenText = false,
    this.isOnlyNumber = false,
  });

  final String hintText;
  final String text;
  final bool isHiddenText;
  final bool isOnlyNumber;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isHiddenText,
      inputFormatters:
          isOnlyNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
      decoration: InputDecoration(
        labelText: hintText,
        hintText: text,
        // helperText: suppotingText,
        filled: false,
        fillColor: Colors.white,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
