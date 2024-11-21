import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/onboard3.dart';
import 'package:lottie/lottie.dart';

class onboard2 extends StatefulWidget {
  const onboard2({super.key});

  @override
  State<onboard2> createState() => _onboard2State();
}

class _onboard2State extends State<onboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50),
        children: [
          Lottie.asset("assets/Animation - 1732094736156.json"),
          const Padding(padding: EdgeInsets.symmetric(vertical: 40)),
          const Center(
            child: Text("Find Your Perfect Pillow 😍", style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold,
            ),),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 30)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: const Text("<-- Previous"), 
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(165, 40),
                  padding: EdgeInsets.zero,
                ),),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const onboard3()));
                }, child: const Text("Next -->"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(165, 40),
                    padding: EdgeInsets.zero,
                  )
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}