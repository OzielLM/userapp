import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PerfilScreen extends StatelessWidget {
  final String name;
  final int age;
  final String ocupation;

  const PerfilScreen({
    super.key, 
    required this.name,
    required this.age,
    required this.ocupation
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 150,
                  color: Colors.cyan,
                ),
                Column(
                  children: [
                    Text(name, style: const TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                    )),
                    Text(age.toString(), style: const TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                    )),
                    Text(ocupation, style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: (){
                context.go('/');
              }, 
              label: const Text('Regresar a Inicio'),
              icon: const Icon(Icons.home),
            )
          ],
        )
      ),
    );
  }
}
