// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "package:aula02/tela2.dart";
import "package:aula02/tela3.dart";
import "package:aula02/cadCartao.dart";
import "package:aula02/cadRandon.dart";
import "package:aula02/cadSenha.dart";
import "package:aula02/main.dart";
import "package:aula02/camera.dart";

import "ListaSenhas.dart";

class tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              // ignore: prefer_const_constructors
              UserAccountsDrawerHeader(
                accountName: Text("User Teste"),
                accountEmail: Text("UserTester@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://i1.sndcdn.com/artworks-000191633248-ye4tjs-t500x500.jpg'),
                  backgroundColor: Colors.transparent,
                ),
                // Circlenvatar
              ),

              ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Favoritos"),
                  subtitle: Text("meus favoritos..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }), // ListTile
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Perfil"),
                  subtitle: Text("Perfil do Usuário..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MyApp();

                        //return recuperarsenha();
                      }),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("Cartões"),
                  subtitle: Text("Cadastro de Cartões"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return cadCartao();
                      }),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.password_outlined),
                  title: Text("Cadastro senha"),
                  subtitle: Text("Cadastro de senha..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return listaSenhas();
                      }),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.password_outlined),
                  title: Text("Gerador Senha"),
                  subtitle: Text("Gerador de Senha..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return geradorSenha();
                      }),
                    );
                  }),
              ListTile(
                  leading: Icon(Icons.camera),
                  title: Text("Camera"),
                  subtitle: Text("Abrir Camera..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }),
                    );
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 111, 0),
          title: const Text("Menu"),
        ),
      ),
    );
  }
}
