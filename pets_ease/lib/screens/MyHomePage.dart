import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Parte superior
          Container(
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 60, left: 10),
                  child: Text(
                    "Lar para seu pet",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, left: 70, right: 50),
                  alignment: Alignment.center,
                  child: Image.asset("assets/image_go.png"),
                ),
              ],
            ),
          ),
          // Parte inferior
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height *
                  0.30, // Ocupa 30% da altura da tela
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(bottom: 28, top: 20),
                    child: Text(
                      "Cuide do seu adorável animal de estimação",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue, // Cor do texto do botão
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), // Bordas arredondadas do botão
                        ),
                        minimumSize: Size(200, 50), // Tamanho do botão
                      ),
                      onPressed: () {
                        // Navega para a página de login
                        context.go('/login');
                      },
                      child: Text('Vamos começar ->'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
