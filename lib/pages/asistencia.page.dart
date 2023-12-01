import 'package:asiste/components/toolbar.component.dart';
import 'package:flutter/material.dart';

class AsistenciaPage extends StatelessWidget {
  const AsistenciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Toolbar(title: 'Asistencia'),
      body: Center(
        child: Text('Asistencia page'),
      ),
    );
  }
}
