import 'package:flutter/material.dart';
import 'package:practica3_componentes/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Componentes de flutter')),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.input, color: AppTheme.mainColor),
              title: Text(
                'Entradas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                "Diferentes widgets para entradas de flutter",
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing: const Icon(Icons.military_tech_outlined,
                  color: AppTheme.mainColor),
            ),
            const Divider(),
            ListTile(
              leading:
                  const Icon(Icons.list_alt_rounded, color: AppTheme.mainColor),
              title: Text(
                'ListView.builder',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text("Scroll infinito",
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: const Icon(Icons.error, color: AppTheme.mainColor),
            ),
            const Divider(),
            ListTile(
              leading:
                  const Icon(Icons.notification_add, color: AppTheme.mainColor),
              title: Text(
                'Notificaciones',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text("Creación de notificaciones",
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: const Icon(Icons.check, color: AppTheme.mainColor),
            ),
          ],
        ));
  }
}
