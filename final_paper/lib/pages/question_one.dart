import 'package:flutter/material.dart';

void main() {
  runApp(const MyQuestionOne());
}

class MyQuestionOne extends StatelessWidget {
  const MyQuestionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question One'),
          backgroundColor: const Color.fromARGB(255, 169, 201, 216),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 450,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Center(
                      child: Text(
                        'Question#1',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                      child: Container(
                        width: 137,
                        height: 160,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/1.jpeg'),
                              Image.asset('assets/2.jpeg'),
                              Image.asset('assets/3.jpeg'),
                              Image.asset('assets/4.jpeg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                      child: Column(
                        children: [
                          Container(
                            width: 137,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Center(
                              child: Text('Esha Waheed'),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 137,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: double.infinity,
                    height: 95,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80),
                            ),
                            color: Colors.red,
                            elevation: 20,
                            child: const SizedBox(
                              width: 150,
                              height: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
