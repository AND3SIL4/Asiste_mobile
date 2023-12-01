import 'package:asiste/components/toolbar.component.dart';
import 'package:asiste/config/routes.config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Inicio', actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRouters.profe);
          },
          icon: const Icon(Icons.settings),
        ),
      ]),
      body: const Center(
        child: Text('Home page'),
      ),
    );
  }
}
