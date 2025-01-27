import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State createState() => _Convertre();
}

class _Convertre extends State {
  String fromCurrency = 'INR';
  String toCurrency = 'USD';
  String result = '';
  final TextEditingController currencyConverter = TextEditingController();
  double currency(double converter, String fromCurrency, String toCurrency) {
    if (fromCurrency == 'INR' && toCurrency == 'USD') {
      return converter / 81;
    }
    if (fromCurrency == 'USD' && toCurrency == 'INR') {
      return converter * 81;
    }
    if (fromCurrency == 'INR' && toCurrency == 'CAD') {
      return converter / 81;
    }
    if (fromCurrency == 'CAD' && toCurrency == 'INR') {
      return converter * 81;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'INR') {
      return converter * 89;
    }
    if (fromCurrency == 'INR' && toCurrency == 'EUR') {
      return converter * 89;
    }
    if (fromCurrency == 'INR' && toCurrency == 'GBR') {
      return converter * 101;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'INR') {
      return converter / 89;
    }
    if (fromCurrency == 'JPY' && toCurrency == 'INR') {
      return converter / 0.5;
    }
    if (fromCurrency == 'INR' && toCurrency == 'JPY') {
      return converter * 0.5;
    }
    if (fromCurrency == 'CDY' && toCurrency == 'INR') {
      return converter / 11.4;
    }
    if (fromCurrency == 'INR' && toCurrency == 'CDY') {
      return converter * 11.4;
    }
    if (fromCurrency == 'ADU' && toCurrency == 'INR') {
      return converter / 53;
    }
    if (fromCurrency == 'INR' && toCurrency == 'ADU') {
      return converter * 53;
    }

    return converter;
  }

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                result.isEmpty ? 'Enter The Amount To Convert' : result,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  shadows: [
                    Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 4.0,
                        color: const Color.fromARGB(255, 5, 75, 121)),
                  ],
                  color: const Color.fromARGB(1, 73, 63, 63),
                  fontSize: 25,
                )),
              ),
            ),
            TextField(
                controller: currencyConverter,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    hintText: "Plz Enter The Amount",
                    hintStyle: TextStyle(color: Colors.white)),
                style: TextStyle(
                  color: Colors.blue,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: DropdownButton(
                  isExpanded: true,
                  hint: Text("select iteams"),
                  value: fromCurrency,
                  items: [
                    'INR',
                    'USD',
                    'CAD',
                    'EUR',
                    'GBR',
                    'JPY',
                    'CNY',
                    'ADU'
                  ]
                      .map((unit) =>
                          DropdownMenuItem(value: unit, child: Text(unit)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      fromCurrency = value!;
                    });
                  },
                )),
                Text('to',
                    style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 20))),
                Expanded(
                    child: DropdownButton2(
                  value: toCurrency,
                  items: [
                    'INR',
                    'USD',
                    'CAD',
                    'EUR',
                    'GBR',
                    'JPY',
                    'CNY',
                    'ADU'
                  ]
                      .map((unit) =>
                          DropdownMenuItem(value: unit, child: Text(unit)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      toCurrency = value!;
                    });
                  },
                ))
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  double converter =
                      double.tryParse(currencyConverter.text) ?? 0;
                  double convertedcurrency =
                      currency(converter, fromCurrency, toCurrency);
                  setState(() {
                    result = '$convertedcurrency  $toCurrency';
                  });
                },
                child: Text('Convert'))
          ]),
        ),
      ),
    );
  }
}
