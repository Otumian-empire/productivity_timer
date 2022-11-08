import 'package:flutter/material.dart';
import 'package:productivity_timer/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:productivity_timer/timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final CountDownTimer timer = CountDownTimer();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    timer.startWork();

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
      body: LayoutBuilder(builder: (context, constraints) {
        final double availableWidth = constraints.maxWidth;

        return Column(
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
            Expanded(
              child: CircularPercentIndicator(
                radius: availableWidth / 2,
                lineWidth: 10.0,
                percent: 1,
                center: Text("30:00",
                    style: Theme.of(context).textTheme.displaySmall),
                progressColor: const Color(0xff009688),
              ),
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
        );
      }),
    );
  }

  void emptyMethod() {}
}
