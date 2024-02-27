import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/inputs_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
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
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.input),
              ),
              title: Text(
                'Entradas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                "Diferentes widgets para entradas de flutter",
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              onTap: () {
                final ruta1 = MaterialPageRoute(builder: (context) {
                  return const InputScreen();
                });
                Navigator.push(context, ruta1);
              },
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.list_alt),
              ),
              title: Text(
                'ListView.builder',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text("Scroll infinito",
                  style: Theme.of(context).textTheme.bodySmall),
              onTap: () {
                final ruta2 = MaterialPageRoute(builder: (context) {
                  return const InfiniteListScreen();
                });
                Navigator.push(context, ruta2);
              },
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.notification_add),
              ),
              title: Text(
                'Notificaciones',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text("Creación de notificaciones",
                  style: Theme.of(context).textTheme.bodySmall),
              onTap: () {
                final ruta3 = MaterialPageRoute(builder: (context) {
                  return const NotificationScreen();
                });
                Navigator.push(context, ruta3);
              },
            ),
          ],
        ));
  }
}
