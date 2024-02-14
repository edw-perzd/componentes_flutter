import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter')
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.heart_broken),
              title: Text('Angel Eduardo', 
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("14/02/2024 - Software Engineer Level 5",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              trailing: Icon(Icons.military_tech_outlined),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Yahir Duran',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("13/02/2024 - Software Engineer Level 6",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              trailing: Icon(Icons.error),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.accessibility_new),
              title: Text('Carlos Alberto',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("12/02/2024 - Software Engineer Level 4",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              trailing: Icon(Icons.check),
            ),
          ],
          )
      );
  }
}