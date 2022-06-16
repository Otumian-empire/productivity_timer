import 'package:flutter/material.dart';
import 'package:productivity_timer/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Work Timer",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;

  const TimerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Work Timer"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff009688),
                    text: "Work",
                    onPressed: emptyMethod,
                    size: 40, // this wasn't passed
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff607D8B),
                    text: "Short Break",
                    onPressed: emptyMethod,
                    size: 40, // this wasn't passed
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff455A64),
                    text: "Long Break",
                    onPressed: emptyMethod,
                    size: 40, // this wasn't passed
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
              ],
            ),
            const Expanded(
              child: Text("Hello there!"),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff212121),
                    text: "Stop",
                    onPressed: emptyMethod,
                    size: 40, // this wasn't passed
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff009688),
                    text: "Restart",
                    onPressed: emptyMethod,
                    size: 40, // this wasn't passed
                  ),
                ),
                Padding(padding: EdgeInsets.all(defaultPadding)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void emptyMethod() {}
}
