import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State createState() => _Convertre();
}

class _Convertre extends State {
  double? result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter by Yashwanth'),
        titleTextStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 25,
            color: Color.fromARGB(255, 5, 0, 0)),
        backgroundColor: Colors.blue,
        elevation: 22,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 206, 214, 218),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 53,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(115, 10, 0, 0),
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: TextButton.styleFrom(
                  elevation: 15,
                  shape: BeveledRectangleBorder(),
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.amber,
                ),
                child: const Text("convert",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 0, 0),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
