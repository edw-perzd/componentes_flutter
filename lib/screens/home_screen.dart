import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/inputs_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
import 'package:practica3_componentes/themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());
      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(
              builder: (context) => const InfiniteListScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(builder: (context) => const InputScreen());
          break;
        case 3:
          ruta = MaterialPageRoute(
              builder: (context) => const NotificationScreen());
          break;
        case 4:
          ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      }
      selectedIndex = index;
      //print('selectedIndex = $selectedIndex');
      Navigator.push(context, ruta);
    });
  }

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
            // OPCIONES DE CIRCULARPROGRESSINDICATOR
            // trailing: const CircularProgressIndicator(
            //   // value: 0.15,
            //   strokeWidth: 10,
            //   color: AppTheme.mainColor,
            //   backgroundColor: Color.fromARGB(255, 129, 211, 51),
            // ),
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
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.image),
            ),
            title: Text(
              'Imágenes',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            onTap: () {
              final ruta4 = MaterialPageRoute(builder: (context) {
                return const ImagesScreen();
              });
              Navigator.push(context, ruta4);
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          // backgroundColor: AppTheme.mainColor,
          unselectedItemColor: AppTheme.backColor,
          selectedItemColor: AppTheme.backColor,
          onTap: (index) => openScreen(index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: AppTheme.backColor,
                ),
                backgroundColor: AppTheme.mainColor,
                label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt,
                ),
                backgroundColor: AppTheme.mainColor,
                label: "Lista"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.input,
                ),
                backgroundColor: AppTheme.mainColor,
                label: "Entradas"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                backgroundColor: AppTheme.mainColor,
                label: "Notificaciones"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.image,
                ),
                backgroundColor: AppTheme.mainColor,
                label: "Imágenes"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.exit_to_app,
                ),
                backgroundColor: AppTheme.mainColor,
                label: "Salir"),
          ],
          unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium),
    );
  }
}
