import 'package:flutter/material.dart';

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
                          builder: (context) => AllCurrencyConveter(),
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

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  final TextEditingController weightController = TextEditingController();
  String fromunit = 'kg';
  String tounit = 'lbs';
  String result = ''; // This is a String, it will store the result as a String

  double convertWeight(double weight, String fromunit, String tounit) {
    if (fromunit == 'kg' && tounit == 'lbs') {
      return weight * 2.20462;
    }
    if (fromunit == 'kg' && tounit == 'g') {
      return weight * 1000;
    }
    if (fromunit == 'lbs' && tounit == 'kg') {
      return weight / 2.20462;
    }
    if (fromunit == "lbs" && tounit == "g") {
      return (weight / 2.20462) * 1000;
    }
    if (fromunit == "g" && tounit == "kg") {
      return weight / 1000;
    }
    if (fromunit == "g" && tounit == "lbs") {
      return (weight / 1000) * 2.20462;
    }
    return weight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Weight Convert"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display the result as a String (converted weight)
              Text(
                result.isEmpty ? 'Enter weight to convert' : result,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: weightController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey,
                  hintText: 'Enter weight',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                    value: fromunit,
                    items: ['kg', 'lbs', 'g']
                        .map((unit) => DropdownMenuItem(
                              value: unit,
                              child: Text(unit),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        fromunit = value!;
                      });
                    },
                  ),
                  Text(" to "),
                  DropdownButton<String>(
                    value: tounit,
                    items: ['kg', 'lbs', 'g']
                        .map((unit) => DropdownMenuItem(
                              value: unit,
                              child: Text(unit),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        tounit = value!;
                      });
                    },
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  double weight = double.tryParse(weightController.text) ?? 0;
                  double convertedWeight =
                      convertWeight(weight, fromunit, tounit);
                  setState(() {
                    // Convert the result to a string before assigning it
                    result = convertedWeight.toStringAsFixed(2); // Fix here
                  });
                },
                child: Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Firstpage()));
                  },
                  child: Text("main menu")),
            )
          ],
        ),
      ),
    );
  }
}
