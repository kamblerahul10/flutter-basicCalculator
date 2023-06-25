import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const SimpleCalulator(),
    );
  }
}

class SimpleCalulator extends StatefulWidget {
  const SimpleCalulator({Key? key}) : super(key: key);

  @override
  State<SimpleCalulator> createState() => _SimpleCalulatorState();
}

class _SimpleCalulatorState extends State<SimpleCalulator> {
  String result = "0";
  String equation = "0";
  String expression = "";
  int zero = 0;

  buttonPressed() {
    if (equation == "0") {
      equation = equation.substring(0, equation.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
              child: Text(
            'Calculator App (Flutter)',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 230,
                color: Colors.black,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  equation,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Container(
                height: 80,
                color: Colors.black,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  result,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade900,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                buttonPressed();
                                setState(() {
                                  result = "0";
                                  equation = "0";
                                });
                              },
                              child: const Text(
                                "AC",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 75,
                              width: 75,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (equation != "0") {
                                        equation = equation.substring(
                                            0, equation.length - 1);
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.backspace,
                                    color: Colors.orangeAccent,
                                    size: 30,
                                  ))),
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )),
                                onPressed: () {
                                  buttonPressed();
                                  setState(() {
                                    equation = equation + "%";
                                  });
                                },
                                child: const Text(
                                  "%",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 75,
                            width: 75,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade900,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  buttonPressed();
                                  setState(() {
                                    equation = equation + "/";
                                  });
                                },
                                child: const Text(
                                  "/",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              height: 70,
                              width: 70,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    buttonPressed();
                                    setState(() {
                                      equation = equation + "7";
                                    });
                                  },
                                  child: const Text(
                                    "7",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightBlueAccent),
                                  ))),
                          SizedBox(
                              height: 70,
                              width: 70,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    buttonPressed();
                                    setState(() {
                                      equation = equation + "8";
                                    });
                                  },
                                  child: const Text(
                                    "8",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightBlueAccent),
                                  ))),
                          SizedBox(
                              height: 70,
                              width: 70,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    buttonPressed();
                                    setState(() {
                                      equation = equation + "9";
                                    });
                                  },
                                  child: const Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightBlueAccent),
                                  ))),
                          SizedBox(
                              height: 70,
                              width: 70,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    buttonPressed();
                                    setState(() {
                                      equation = equation + "*";
                                    });
                                  },
                                  child: const Text(
                                    "✖",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orangeAccent,
                                    ),
                                  ))),
                        ],
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "4";
                                      });
                                    },
                                    child: const Text(
                                      "4",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "5";
                                      });
                                    },
                                    child: const Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "6";
                                      });
                                    },
                                    child: const Text(
                                      "6",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "-";
                                      });
                                    },
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orangeAccent),
                                    ))),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "1";
                                      });
                                    },
                                    child: const Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "2";
                                      });
                                    },
                                    child: const Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "3";
                                      });
                                    },
                                    child: const Text(
                                      "3",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "+";
                                      });
                                    },
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orangeAccent),
                                    ))),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height: 70,
                                width: 167,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + "0";
                                      });
                                    },
                                    child: const Text(
                                      "0",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      buttonPressed();
                                      setState(() {
                                        equation = equation + ".";
                                      });
                                    },
                                    child: const Text(
                                      ".",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ))),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      backgroundColor: Colors.orangeAccent,
                                    ),
                                    onPressed: () {
                                      Parser p = Parser();
                                      Expression exp = p.parse(equation);
                                      ContextModel cm = ContextModel();
                                      double eval =
                                          exp.evaluate(EvaluationType.REAL, cm);

                                      setState(() {
                                        result = eval.toString();
                                      });
                                    },
                                    child: const Text(
                                      "＝",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
