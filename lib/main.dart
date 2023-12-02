import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

              children: [
                Text('Hello Corvit'),
                Card(
                  elevation: 6.0,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('CARD'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      elevation: 6.0,
                      shadowColor: Colors.indigoAccent,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: (){},
                    child: Text(
                        'Button',
                      style: TextStyle(
                        color: Colors.green
                      ),
                    ),
                  ),
                ),
                Text('App Development'),
                Text('App Development'),
                Text('App Development'),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: (){},
                      child: Text('Button'),
                    ),
                    Text('Hello Corvit'),
                    Text('Hello Corvit'),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Text('Button'),
                        ),
                        Text('Hello Corvit'),
                      ],
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

