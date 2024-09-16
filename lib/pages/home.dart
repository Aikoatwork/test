import 'package:flutter/material.dart';
import 'package:TUGAS1PAM/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logOut,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                spacing: 10.0, // Spasi antara kotak-kotak
                runSpacing: 10.0, // Spasi antara baris kotak
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.lightBlueAccent,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Login berhasil, selamat datang',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _logOut() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MyApp()),
    );
  }
}
