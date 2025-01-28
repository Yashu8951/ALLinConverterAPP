import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: const Color.fromARGB(255, 200, 192, 194),
      appBar: AppBar(
        title: Text("Weight Convert"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/weight.jpeg",
                ),
                fit: BoxFit.fitHeight)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Supported Weight',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        shadows: [
                          Shadow(
                              offset: Offset(.8, .8),
                              blurRadius: 0.1,
                              color: const Color.fromARGB(255, 255, 254, 254))
                        ])),
                Text(
                  '1.kg kilogram\n2.lbs(pond)\n3.g(gram)',
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  textAlign: TextAlign.left,
                ),
                // Display the result as a String (converted weight)
                Text(
                  result.isEmpty ? 'Enter weight to convert' : result,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: const Color.fromARGB(255, 162, 183, 177))
                      ]),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(188, 245, 244, 244),
                    hintText: 'Enter weight',
                    prefixIcon: Icon(Icons.accessibility),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: DropdownButton<String>(
                          iconEnabledColor: Colors.black,
                          iconSize: 30,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          isExpanded: true,
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
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        " to ",
                        style: GoogleFonts.lato(fontSize: 20),
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          iconEnabledColor: Colors.black,
                          iconSize: 20,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                          isExpanded: true,
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
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    double weight = double.tryParse(weightController.text) ?? 0;
                    double convertedWeight =
                        convertWeight(weight, fromunit, tounit);
                    setState(() {
                      result =
                          '$fromunit to $tounit = ${convertedWeight.toStringAsFixed(2)}$tounit';
                    });
                  },
                  child: Text("Convert"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
