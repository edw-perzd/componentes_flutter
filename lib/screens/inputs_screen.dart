import 'package:flutter/material.dart';
import 'package:practica3_componentes/themes/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            const ElevatedButton(onPressed: null, child: Text('Guardar'))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: AppTheme.subtitleColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: AppTheme.backColor,
                ),
                label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt,
                  color: AppTheme.backColor,
                ),
                label: "Datos"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.exit_to_app,
                  color: AppTheme.backColor,
                ),
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
          labelStyle: AppTheme.lightTheme.textTheme.headlineLarge),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
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
          style: AppTheme.lightTheme.textTheme.headlineLarge,
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
}
