import 'package:TUGAS1PAM/pages/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/icon.jpg',
                  height: 200,
                ),
                const Text(
                  'TUGAS 1 PRAK.PEMROGRAMAN APLIKASI MOBILE SI-A',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    color: Colors.blue,
                  ),
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'USERNAME',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'PASSWORD',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      _autentikasi();
                    },
                    color: Colors.blue,
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _autentikasi() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    if (username == '123210181' && password == '123210181') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Gagal!'),
        ),
      );
    }
  }
}
