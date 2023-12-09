import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2017/09/13/08/37/abstract-2744727_1280.jpg',
                fit: BoxFit.cover,
                height: 1000,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0, bottom: 0),
                    child: Text(
                      'Login to this website',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue[900]),
                    ),
                  ),
                  Text('get your ass to this website'),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.perm_identity_rounded),
                            filled: true,
                            labelText: 'Username',
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key),
                            filled: true,
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 54.0),
                    child: Container(
                      width: 100,
                      height: 30,
                      child: FilledButton(
                        child: const Text(
                          "Login",
                        ),
                        onPressed: () {},
                      ),
                    ),
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
