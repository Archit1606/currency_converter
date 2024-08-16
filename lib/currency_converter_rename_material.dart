import 'package:flutter/material.dart';

class CurrencyConverterRenameMaterial extends StatefulWidget {
  const CurrencyConverterRenameMaterial({super.key});

  @override
  State<CurrencyConverterRenameMaterial> createState() =>
      _CurrecyConverterRenameMaterialState();
}

class _CurrecyConverterRenameMaterialState
    extends State<CurrencyConverterRenameMaterial> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        elevation: 0,
        title: const Text(
          'currency converter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: const Color.fromARGB(255, 27, 27, 27),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'INR $result',
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'please enter the amount in INR',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
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
                  style: ButtonStyle(
                      elevation: const WidgetStatePropertyAll(15),
                      backgroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                      foregroundColor:
                          const WidgetStatePropertyAll(Colors.white),
                      minimumSize: const WidgetStatePropertyAll(
                          Size(double.infinity, 50)),
                      shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ))),
                  child: const Text(" convert"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
