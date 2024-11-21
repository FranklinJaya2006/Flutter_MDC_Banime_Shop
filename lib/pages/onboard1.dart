import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/onboard2.dart';

class onboard1 extends StatefulWidget {
  const onboard1({super.key});

  @override
  State<onboard1> createState() => _onboard1State();
}

class _onboard1State extends State<onboard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 120),
        children: <Widget>[
          Column(
            children: [
              Image.asset('assets/Screenshot_2024-11-20_at_15.09.50-removebg-preview.png')
            ]
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
          const Center(
            child: const Text("Welcome to Banime Hub", 
            style: TextStyle(fontWeight: FontWeight.bold, 
            fontSize: 30),
            )
          ), 
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          const Center(child: const Text("Best place to find Anime pillows")),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => onboard2()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 40), // Ukuran tetap tombol
                padding: EdgeInsets.zero, // Hilangkan padding default
              ),
              child: const Text("Let's get started"),
            ),
          ),
        ],
      ),
    );
  }
}
