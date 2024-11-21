import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/jual.dart';
import 'package:flutter_application_1/pages/onboard1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/22a3e24b0d0c74c2e8d335860ce2cff2.jpg', height: 150, width: 150,),
                const SizedBox(height: 16.0),
                const Text('Banime Hub', style: TextStyle(fontSize: 20),),
              ],
            ),
            const SizedBox(height: 60.0),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            // spacer
            const SizedBox(
              height: 15,
            ),
            // [Password]
            const TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Jual())
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
