import 'package:denarius/core/presentation/views/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // You can use a NetworkImage for the image part
            // For this example, I'm using a placeholder
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Hola @Usuario',
                style: TextStyle(
                fontSize: 32.0, 
                fontWeight: FontWeight.w800, color: Color(0xff403147), fontFamily: 'Inter'),
              ),
            ),
            Text(
              'Welcome',
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  // Email TextField
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Correo',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  // Password TextField
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  // Login Button
                  ElevatedButton( 
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      => DashboardView()));
                    },
                    child: Text('Entrar', style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff1F2732)), // double.infinity is the width and 50 is the height
                      minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)), // Ancho y altura del botón
                    )
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
