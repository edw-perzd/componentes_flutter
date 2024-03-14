import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/inputs_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
import 'package:practica3_componentes/themes/app_theme.dart';

class InfiniteListScreen extends StatefulWidget {
  const InfiniteListScreen({super.key});

  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}

class _InfiniteListScreenState extends State<InfiniteListScreen> {
  int selectedIndex = 1;
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
        title: const Text('Lista'),
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
