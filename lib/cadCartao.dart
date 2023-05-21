import 'package:aula02/recuperarsenha.dart';
import 'package:flutter/material.dart';

class cadCartao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 111, 0),
        title: const Text("Cadastro de cartões"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: _Body(),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Minha Conta",
            backgroundColor: Color.fromRGBO(241, 241, 241, 1),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock,
            ),
            label: "Senhas",
            backgroundColor: Color.fromRGBO(241, 241, 241, 1),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership),
              label: "Cartões",
              backgroundColor: Color.fromRGBO(241, 241, 241, 1)),

          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favoritos",
              backgroundColor: Color.fromRGBO(241, 241, 241, 1)),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
      ),
    ));
  }
}

Widget fieldDescricao() {
  return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: "Descrição"));
}

Widget CartaoFrente(context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [cartaoFront(context)],
      ));
}

Widget cartaoFront(context) {
  return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(146, 219, 21, 173),
      ),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Numero",
              )),
          SizedBox(
            height: 20,
          ),
          TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Validade",
              )),
        ],
      ));
}

Widget CartaoAtras(context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [cartaoBack(context)],
      ));
}

Widget cartaoBack(context) {
  return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(146, 219, 21, 173),
      ),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(color: Colors.black),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 169, 185, 185)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "CVV",
          )),
        ],
      ));
}

Widget fieldSenha() {
  return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: "Senha"));
}

class _Body extends StatelessWidget {
  bool mostraSenha = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        fieldDescricao(),
        SizedBox(
          height: 20,
        ),
        CartaoFrente(context),
        SizedBox(
          height: 20,
        ),
        CartaoAtras(context),
        SizedBox(
          height: 20,
        ),
        fieldSenha(),
      ],
    );
  }
}
