import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_ease/screens/MyHomePage.dart';
 // Importando a biblioteca para gerenciamento de rotas

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/home',
      routes: [
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return MyHomePage();
          },
        ),
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return LoginPage();
          },
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: _router, // Configurando o GoRouter
      title: 'Pets Ease',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega para a página de login
            context.go('/login');
          },
          child: Text('Go to Login'),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Volta para a página inicial
            context.go('/home');
          },
          child: Text('Back to Home'),
        ),
      ),
    );
  }
}
