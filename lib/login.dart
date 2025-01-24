import 'package:flutter/material.dart';

class AllCurrencyConveter extends StatefulWidget {
  const AllCurrencyConveter({super.key});
  @override
  State createState() => _Currencyy();
}

class _Currencyy extends State {
  double result = 0;
  double resultdirham = 0;
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController dirham = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(226, 12, 167, 198),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CurrencyConveter',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    hintText: 'enter amount to convert to dollor',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  child: Text("convert")),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: dirham,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.money),
                    hintText: 'enter amount to convert to Dirham',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(dirham.text) * 23.4;
                    });
                  },
                  child: Text("convert")),
            )
          ],
        ),
      ),
    );
  }
}
