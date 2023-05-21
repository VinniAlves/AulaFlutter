import 'package:flutter/material.dart';

class cadUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro de Usuario'),
          backgroundColor: Color.fromARGB(255, 255, 111, 0),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black38,
            onPressed: () => Navigator.pop(context, false),
          ),
          actions: [IconButton(onPressed: null, icon: Icon(Icons.save))],
        ),
        body: _Body(),
      ),
    );
  }
}

Widget fieldName() {
  return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'Nome'));
}

Widget fieldEmail() {
  return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'E-mail'));
}

Widget fieldSenha() {
  return TextFormField(
      obscureText: true,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'Senha'));
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            fieldEmail(),
            SizedBox(
              height: 20,
            ),
            fieldName(),
            SizedBox(
              height: 20,
            ),
            fieldSenha(),
          ],
        ),
      ),
    );
  }
}
