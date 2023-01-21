import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey();

    final Map<String, String> formValues = {
      'first_name': 'Oscar',
      'last_name': 'Tapia',
      'email': 'oscarsk69@gmail.com',
      'password': '123456',
      'role': 'admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                //Nombre
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de Usuario',
                  formPorperty: 'first_name',
                  formValues: formValues
                ),
                const SizedBox(height: 30),
                //Apellido
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del Usuario',
                  formPorperty: 'last_name',
                  formValues: formValues
                ),
                const SizedBox(height: 30),
                //Correo
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'ejemplo@correo.com',
                  keyboardType: TextInputType.emailAddress,
                  formPorperty: 'email',
                  formValues: formValues
                ),
                const SizedBox(height: 30),
                //Contraseña
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: ' ********** ',
                  obscureText: true,
                  formPorperty: 'password',
                  formValues: formValues
                ),
                const SizedBox(height: 30),

                //Selector
                DropdownButtonFormField(
                  //value : 'Admin',
                  items: const[
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ], onChanged: (String? value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                //Boton Guardar
                ElevatedButton(
                  //*Eventos del boton
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Form no valido');
                      return;
                    }
                    //* imprimir valores del formulario
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
