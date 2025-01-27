import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  Text(
                    'This converter allows users to quickly and efficiently calculate the value of one currency in terms of another, making it a handy tool for managing finances or staying informed about exchange rates.',
                    style: GoogleFonts.lato(fontSize: 20),
                  ),
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
                  Text(
                    'This tool provides a quick and efficient way to calculate weight in different units, helping you stay on top of your health and fitness goals.',
                    style: GoogleFonts.lato(fontSize: 20),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Weight()));
                    },
                    child: Text('Weight Clalcuation'),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
