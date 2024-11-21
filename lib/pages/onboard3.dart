import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:lottie/lottie.dart';

class onboard3 extends StatefulWidget {
  const onboard3({super.key});

  @override
  State<onboard3> createState() => _onboard3State();
}

class _onboard3State extends State<onboard3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 40)),
          Lottie.asset("assets/loginanim.json"),
          const Padding(padding: EdgeInsets.symmetric(vertical: 60)),
          const Center(
              child: Text(
            "You're ready to login now 👏🏻",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          const Center(child: Text("Click next to login")),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("<-- Previous"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(165, 40),
                    padding: EdgeInsets.zero,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Login()));
                    },
                    child: const Text("Next -->"),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(165, 40),
                      padding: EdgeInsets.zero,
                    ))
              ],
            ),
          )
        ]));
  }
}
