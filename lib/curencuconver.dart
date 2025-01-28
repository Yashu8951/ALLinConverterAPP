import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
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
      return converter / 60;
    }
    if (fromCurrency == 'CAD' && toCurrency == 'INR') {
      return converter * 60;
    }

    if (fromCurrency == 'INR' && toCurrency == 'EUR') {
      return converter / 89;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'INR') {
      return converter * 89;
    }

    if (fromCurrency == 'INR' && toCurrency == 'GBP') {
      return converter / 101;
    }
    if (fromCurrency == 'GBP' && toCurrency == 'INR') {
      return converter * 101;
    }

    if (fromCurrency == 'INR' && toCurrency == 'JPY') {
      return converter * 1.5;
    }
    if (fromCurrency == 'JPY' && toCurrency == 'INR') {
      return converter / 1.5;
    }
    if (fromCurrency == 'INR' && toCurrency == 'CNY') {
      return converter / 11.4;
    }
    if (fromCurrency == 'CNY' && toCurrency == 'INR') {
      return converter * 11.4;
    }

    if (fromCurrency == 'INR' && toCurrency == 'AUD') {
      return converter / 53;
    }
    if (fromCurrency == 'AUD' && toCurrency == 'INR') {
      return converter * 53;
    }

    if (fromCurrency == 'USD' && toCurrency == 'EUR') {
      return converter * 0.9;
    }
    if (fromCurrency == 'USD' && toCurrency == 'CAD') {
      return converter * 1.33;
    }
    if (fromCurrency == 'USD' && toCurrency == 'GBP') {
      return converter * 0.8;
    }
    if (fromCurrency == 'USD' && toCurrency == 'JPY') {
      return converter * 135;
    }
    if (fromCurrency == 'USD' && toCurrency == 'CNY') {
      return converter * 7.1;
    }
    if (fromCurrency == 'USD' && toCurrency == 'ADU') {
      return converter * 1.52;
    }

    // EUR conversions
    if (fromCurrency == 'EUR' && toCurrency == 'USD') {
      return converter / 0.9;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'CAD') {
      return converter * 1.47;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'GBP') {
      return converter * 0.88;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'JPY') {
      return converter * 148;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'CNY') {
      return converter * 7.8;
    }
    if (fromCurrency == 'EUR' && toCurrency == 'ADU') {
      return converter * 1.65;
    }

    // CAD conversions
    if (fromCurrency == 'CAD' && toCurrency == 'USD') {
      return converter / 1.33;
    }
    if (fromCurrency == 'CAD' && toCurrency == 'EUR') {
      return converter / 1.47;
    }
    if (fromCurrency == 'CAD' && toCurrency == 'GBP') {
      return converter * 0.6;
    }
    if (fromCurrency == 'CAD' && toCurrency == 'JPY') {
      return converter * 101;
    }
    if (fromCurrency == 'CAD' && toCurrency == 'CNY') {
      return converter * 5.35;
    }
    if (fromCurrency == 'CAD' && toCurrency == 'ADU') {
      return converter * 1.12;
    }

    // GBP conversions
    if (fromCurrency == 'GBP' && toCurrency == 'USD') {
      return converter / 0.8;
    }
    if (fromCurrency == 'GBP' && toCurrency == 'EUR') {
      return converter / 0.88;
    }
    if (fromCurrency == 'GBP' && toCurrency == 'CAD') {
      return converter / 0.6;
    }
    if (fromCurrency == 'GBP' && toCurrency == 'JPY') {
      return converter * 167;
    }
    if (fromCurrency == 'GBP' && toCurrency == 'CNY') {
      return converter * 8.5;
    }
    if (fromCurrency == 'GBP' && toCurrency == 'ADU') {
      return converter * 1.9;
    }

    // JPY conversions
    if (fromCurrency == 'JPY' && toCurrency == 'USD') {
      return converter / 135;
    }
    if (fromCurrency == 'JPY' && toCurrency == 'EUR') {
      return converter / 148;
    }
    if (fromCurrency == 'JPY' && toCurrency == 'CAD') {
      return converter / 101;
    }
    if (fromCurrency == 'JPY' && toCurrency == 'GBP') {
      return converter / 167;
    }
    if (fromCurrency == 'JPY' && toCurrency == 'CNY') {
      return converter * 0.052;
    }
    if (fromCurrency == 'JPY' && toCurrency == 'ADU') {
      return converter * 0.01;
    }

    // CNY conversions
    if (fromCurrency == 'CNY' && toCurrency == 'USD') {
      return converter / 7.1;
    }
    if (fromCurrency == 'CNY' && toCurrency == 'EUR') {
      return converter / 7.8;
    }
    if (fromCurrency == 'CNY' && toCurrency == 'CAD') {
      return converter / 5.35;
    }
    if (fromCurrency == 'CNY' && toCurrency == 'GBP') {
      return converter / 8.5;
    }
    if (fromCurrency == 'CNY' && toCurrency == 'JPY') {
      return converter / 0.052;
    }
    if (fromCurrency == 'CNY' && toCurrency == 'ADU') {
      return converter * 0.22;
    }

    // ADU conversions
    if (fromCurrency == 'ADU' && toCurrency == 'USD') {
      return converter / 1.52;
    }
    if (fromCurrency == 'ADU' && toCurrency == 'EUR') {
      return converter / 1.65;
    }
    if (fromCurrency == 'ADU' && toCurrency == 'CAD') {
      return converter / 1.12;
    }
    if (fromCurrency == 'ADU' && toCurrency == 'GBP') {
      return converter / 1.9;
    }
    if (fromCurrency == 'ADU' && toCurrency == 'JPY') {
      return converter / 0.01;
    }
    if (fromCurrency == 'ADU' && toCurrency == 'CNY') {
      return converter / 0.22;
    }

    // If no matching condition
    return converter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Currency Converter'),
          titleTextStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 25,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          elevation: 10,
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/currencyConverter.app.jpeg.jpeg'),
                  fit: BoxFit.fitHeight),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Supported Currencies:',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '1. INR (Indian Rupee)\n2. USD (United States Dollar)\n3. CAD (Canadian Dollar)\n4. EUR (Euro)\n5. GBP (British Pound)\n6. JPY (Japanese Yen)\n7. CNY (Chinese Yuan)\n8. AUD (Australian Dollar)',
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        result.isEmpty ? 'Enter the amount to convert' : result,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Colors.blueGrey,
                              ),
                            ],
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      controller: currencyConverter,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(188, 251, 254, 255),
                        hintText: "Please enter the amount",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 41, 32, 32)),
                        border: OutlineInputBorder(),
                      ),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 40, 38, 38)),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                            iconEnabledColor: Colors.black,
                            iconSize: 40,
                            isExpanded: true,
                            hint: const Text("Select Currency"),
                            value: fromCurrency,
                            items: const [
                              'INR',
                              'USD',
                              'CAD',
                              'EUR',
                              'GBP',
                              'JPY',
                              'CNY',
                              'AUD'
                            ]
                                .map((unit) => DropdownMenuItem(
                                      value: unit,
                                      child: Text(unit),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                fromCurrency = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'to',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: DropdownButton<String>(
                            iconEnabledColor: Colors.black,
                            iconSize: 40,
                            isExpanded: true,
                            value: toCurrency,
                            items: const [
                              'INR',
                              'USD',
                              'CAD',
                              'EUR',
                              'GBP',
                              'JPY',
                              'CNY',
                              'AUD'
                            ]
                                .map((unit) => DropdownMenuItem(
                                      value: unit,
                                      child: Text(unit),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                toCurrency = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        double converter =
                            double.tryParse(currencyConverter.text) ?? 0;
                        double convertedCurrency =
                            currency(converter, fromCurrency, toCurrency);
                        setState(() {
                          result =
                              '$converter $fromCurrency = ${convertedCurrency.toStringAsFixed(2)} $toCurrency';
                        });
                      },
                      child: const Text('Convert'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
