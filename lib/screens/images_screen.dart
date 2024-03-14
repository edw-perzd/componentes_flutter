import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/inputs_screen.dart';
import 'package:practica3_componentes/themes/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 4;
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
        title: const Text(
          'Imágenes',
        ),
      ),
      body: ListView(
        children: [imageCard(), imageWeb()],
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

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(image: AssetImage('assets/imgs/BMW_image.jpg')),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Marca BMW',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  Stack imageWeb() {
    return Stack(children: <Widget>[
      const Center(
        child: CircularProgressIndicator(),
      ),
      Center(
        child: SizedBox(
            height: 450,
            width: 450,
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://media.istockphoto.com/id/1127302688/es/vector/icono-de-pato-amarillo.jpg?s=612x612&w=0&k=20&c=qbHH2q0eR_8H_XFFAn-NJi5WINYtcN2OrruQ1KCG0W4='
                // Image.network(src) = Trate imagen de la red
                )),
      ),
    ]);
  }
}
