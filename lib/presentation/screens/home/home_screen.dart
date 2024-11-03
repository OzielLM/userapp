import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Bienvenido",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 100,),
            SizedBox(
              height: 300,
              child: Image.network('https://img.freepik.com/vector-premium/icono-circulo-usuario-anonimo-ilustracion-vector-estilo-plano-sombra_520826-1931.jpg',),
            ),
            const SizedBox(height: 50,),
            FilledButton.icon(
              onPressed: (){
                context.push('/crear_perfil');
              }, 
              label: const Text('Crear Perfil'),
              icon: const Icon(Icons.person_add),
            )
          ],
        )
      ),
    );
  }
}