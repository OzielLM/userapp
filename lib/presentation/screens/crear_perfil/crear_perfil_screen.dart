import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CrearPerfilScreen extends StatelessWidget {
  const CrearPerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController ocupationController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Perfil'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Nombre'
                        ),
                        validator: (value){
                          if (value!.isEmpty) {
                            return 'Por favor, ingresa un nombre';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Edad'
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor, ingresa la edad';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: ocupationController,
                        decoration: const InputDecoration(
                          labelText: 'Ocupacion'
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor, ingresa la ocupación';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30,),
                      ElevatedButton.icon(
                        onPressed: (){
                          context.push('/perfil/${nameController.text}/${ageController.text}/${ocupationController.text}');
                        }, 
                        label: const Text('Guardar y Ver Perfil'),
                        icon: const Icon(Icons.arrow_forward),
                      )
                    ],
                  )
                )
              )
            ],
          ),
        )
      ),
    );
  }
}
