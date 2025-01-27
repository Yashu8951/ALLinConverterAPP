import 'package:flutter/material.dart';

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
                    result = convertedWeight.toStringAsFixed(2);
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
