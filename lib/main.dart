import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  plus() {
    setState(() {
      number++;
    });
  }

  minus() {
    setState(() {
      if (number > 0) {
        number--;
      }
    });
  }

  clear() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tasbeeh',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      plus();
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      minus();
                    },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  clear();
                },
                child: Text(
                  'Clear',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
