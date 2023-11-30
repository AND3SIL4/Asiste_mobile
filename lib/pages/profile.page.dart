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
                  Text('C.C. 100012632666'),
                  Text('correo@electronico.com'),
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
                  Text('nombre_usuario'),
                  Text('tipo-usario'),
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
                  Text('ID ficha'),
                  Text('Nombre programa'),
                  Text('Nombre dependencia'),
                  Text('Tipo formacion'),
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
                  Text('Lunes - Salon - Asignatura'),
                  Text('Martes - Salon - Asignatura'),
                  Text('Miercoles - Salon - Asignatura'),
                  Text('Jueves - Salon - Asignatura'),
                  Text('Viernes - Salon - Asignatura'),
                  Text('Sabado - Salon - Asignatura'),
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
