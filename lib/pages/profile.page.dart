import 'package:asiste/components/toolbar.component.dart';
import 'package:asiste/components/user_avatar.component.dart';
import 'package:asiste/config/routes.config.dart';
import 'package:asiste/config/string.config.dart';
import 'package:asiste/styles/text.style.dart';
import 'package:flutter/material.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Custom component AppBar
      appBar: Toolbar(title: 'Perfil de usuario', actions: [
        // Boton reactivo con menu desplegable
        PopupMenuButton<ProfileMenu>(
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: ProfileMenu.edit,
                child: Text('Editar información'),
              ),
              const PopupMenuItem(
                value: ProfileMenu.logout,
                child: Text('Cerrar sesión'),
              ),
            ];
          },
          // funcionalidad de las elecciones del popupmenu
          onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRouters.editProfile);
                break;
              case ProfileMenu.logout:
                Navigator.of(context).pushNamed(AppRouters.login);
                break;
              default:
            }
          },
        )
      ]),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          // Widget principal de la pagina perfil de usuraio
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              // Widget que contiene la imagen de usuario y el nombre
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    UserAvatar(size: 250),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Andres Felipe Silva',
                      style: AppText.header1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Divider(
                thickness: 1,
                height: 24,
              ),
              // Inicio de widgets sin reactividad que renderizan informacion
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.personalData,
                    style: AppText.header2,
                  ),
                  Text('C.C. 1000126326'),
                  Text('afsilva6236@soy.sena.edu.co'),
                ],
              ),
              Divider(
                thickness: 1,
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.userData,
                    style: AppText.header2,
                  ),
                  Text('AFSIL6236'),
                  Text('Aprendiz'),
                ],
              ),
              Divider(
                thickness: 1,
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.fichaData,
                    style: AppText.header2,
                  ),
                  Text('2503804'),
                  Text('Analisis y desarrollo de software'),
                  Text('Teleinformatica'),
                  Text('Tecnologo'),
                ],
              ),
              Divider(
                thickness: 1,
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.scheduleData,
                    style: AppText.header2,
                  ),
                  Text('Lunes - 412 - Derecho fundamental del trabajo'),
                  Text('Martes - 509 - Despliegue full stack'),
                  Text('Miercoles - 509 - Despliegue full stack'),
                  Text('Jueves - 509 - Migración y testing'),
                  Text('Viernes - 509 - Migración y testing'),
                  Text('Sabado - 413 - Medio ambiente y STT'),
                ],
              ),
              Divider(
                thickness: 1,
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
