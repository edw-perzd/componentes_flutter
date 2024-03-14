import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/inputs_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
import 'package:practica3_componentes/themes/app_theme.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int selectedIndex = 2;
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
      appBar: AppBar(
        title: const Text('Data Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            salidaNombre(),
            const Divider(),
            Text(
              '¿Te gusta Flutter? Si',
              style: AppTheme.lightTheme.textTheme.bodyLarge,
            ),
            const Divider(),
            Text(
              '¿Que tanto te gusta Flutter? 50.0',
              style: AppTheme.lightTheme.textTheme.bodyLarge,
            ),
            const Divider(),
            Text(
              '¿Qué prefieres usar para el desarrollo móvil? Flutter',
              style: AppTheme.lightTheme.textTheme.bodyLarge,
            ),
            const Divider(),
            Text(
              '¿Qué usas para correr tus apps de Flutter? Navegador. Emulador',
              style: AppTheme.lightTheme.textTheme.bodyLarge,
            )
          ],
        ),
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

  Row salidaNombre() {
    return Row(
      children: <Widget>[
        Text(
          'Nombre: ',
          style: AppTheme.lightTheme.textTheme.bodyLarge,
        ),
        Text(
          'Ángel Eduardo Pérez Dávila',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        )
      ],
    );
  }
}
