import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pomodoro/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const TimerScreen());
  }
}

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  void EmptyMethod() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          centerTitle: true,
          title: const Text(
            "Pomodoro",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          return Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                      child: ProductivityButton(
                          color: Colors.red,
                          text: 'Work',
                          size: 40,
                          onPressed: EmptyMethod)),
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                      child: ProductivityButton(
                          color: Colors.grey,
                          text: 'Short Break',
                          size: 40,
                          onPressed: EmptyMethod)),
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                      child: ProductivityButton(
                          color: Colors.black,
                          text: 'Long Break',
                          size: 40,
                          onPressed: EmptyMethod)),
                  const Padding(padding: EdgeInsets.all(5)),
                ],
              ),
              Expanded(
                  child: CircularPercentIndicator(
                      radius: availableWidth / 2.5,
                      lineWidth: 10.0,
                      percent: 1,
                      progressColor: Colors.red[700],
                      center: Text("45:00",
                          style: Theme.of(context).textTheme.displayMedium))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                      child: ProductivityButton(
                          color: Colors.red,
                          text: 'Stop',
                          size: 40,
                          onPressed: EmptyMethod)),
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                      child: ProductivityButton(
                          color: Colors.black,
                          text: 'Start',
                          size: 40,
                          onPressed: EmptyMethod)),
                  const Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ],
          );
        }));
  }
}
