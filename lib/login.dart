import 'package:flutter/material.dart';
import 'curencuconver.dart';
import 'weight.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "All In Converter App",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImGage.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CurrencyConverter(),
                        ),
                      );
                    },
                    child: const Text("Currency Converter"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Weight()));
                      },
                      child: Text('Weight Clalcuation'))
                ],
              ),
            ),
          ),
        ));
  }
}
