import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Res.dart';

class points_Counter extends StatefulWidget {
  @override
  State<points_Counter> createState() => _points_CounterState();
}

class _points_CounterState extends State<points_Counter> {
  var counter = 0;
  var counter2 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Text("Points Counter"), backgroundColor: Colors.orange),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 400.0,
                    child: Column(
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(
                            fontSize: 140,
                          ),
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.orange),
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                          child: Text('Add 1 Point'),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.orange),
                          onPressed: () {
                            setState(() {
                              counter = counter + 2;
                            });
                          },
                          child: Text('Add 2 Point'),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.orange),
                          onPressed: () {
                            setState(() {
                              counter = counter + 3;
                            });
                          },
                          child: Text('Add 3 Point'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 400.0,
                    child: Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$counter2',
                          style: TextStyle(
                            fontSize: 140,
                          ),
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.orange),
                          onPressed: () {
                            setState(() {
                              counter2++;
                            });
                          },
                          child: Text('Add 1 Point'),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.orange),
                          onPressed: () {
                            setState(() {
                              counter2 = counter2 + 2;
                            });
                          },
                          child: Text('Add 2 Point'),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.orange),
                          onPressed: () {
                            setState(() {
                              counter2 = counter2 + 3;
                            });
                          },
                          child: Text('Add 3 Point'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    setState(() {
                      counter = 0;
                      counter2 = 0;
                    });
                  },
                  child: Text('Reset'),
                ),
              ),
            ],
          )),
    );
  }
}
