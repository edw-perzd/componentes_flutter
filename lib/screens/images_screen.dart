import 'package:flutter/material.dart';
import 'package:practica3_componentes/themes/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
