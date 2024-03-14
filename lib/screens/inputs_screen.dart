import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3_componentes/screens/data_screen.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
import 'package:practica3_componentes/themes/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 2;
  int selectedRadioOption = 0; // Para los RadioButton

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
        case 5:
          SystemChannels.platform.invokeListMethod('SystemNavigator.pop');
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
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(height: 50, child: entradaTexto()),
            SizedBox(height: 100, child: entradaSwitch()),
            SizedBox(height: 100, child: entradaSlider()),
            entradasRadio(),
            Text(
              '¿Qué usas para correr tus apps de Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            entradasCheck(),
            ElevatedButton(
                onPressed: () {
                  final rutaDataScreen = MaterialPageRoute(builder: (context) {
                    return const DataScreen();
                  });
                  Navigator.push(context, rutaDataScreen);
                },
                child: const Text('Guardar'))
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
                icon: Icon(Icons.home_filled, color: AppTheme.backColor),
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

  TextField entradaTexto() {
    return TextField(
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: 'Escribe tu nombre',
          labelStyle: AppTheme.lightTheme.textTheme.headlineMedium),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        const SizedBox(
          width: 25,
        ),
        Switch(
            value: valueSwitch,
            onChanged: (value) {
              setState(() {
                valueSwitch = value;
              });
            })
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: <Widget>[
        Text(
          '¿Qué tanto te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider,
          activeColor: AppTheme.mainColor,
          inactiveColor: AppTheme.subtitleColor,
          thumbColor: AppTheme.backColor,
          divisions: 10,
          label: '${valueSlider.round()}',
          onChanged: (value) {
            setState(() {
              valueSlider = value;
              print('Valor del Slider: $valueSlider');
            });
          },
        )
      ],
    );
  }

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          '¿Qué prefieres usar para el desarrollo móvil',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Transform.scale(
            scale: 1.3,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value!;
                });
                print('Opcion seleccionada: $selectedRadioOption');
              },
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Transform.scale(
            scale: 1.3,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value!;
                });
                print('Opcion seleccionada: $selectedRadioOption');
              },
            ),
          ),
        )
      ],
    );
  }

  Row entradasCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
              print('Valor de navegador: $isChecked1');
            });
          },
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: isChecked2,
          onChanged: (value) {
            setState(() {
              isChecked2 = value!;
              print('Valor de emulador: $isChecked2');
            });
          },
        ),
        Text(
          'Celular',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: isChecked3,
          onChanged: (value) {
            setState(() {
              isChecked3 = value!;
              print('Valor de celular: $isChecked3');
            });
          },
        ),
      ],
    );
  }
}
