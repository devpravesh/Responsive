import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: window.physicalSize.height / 5,
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.grey,
                  color: const Color.fromARGB(255, 153, 96, 96),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 20,
                          color: Colors.grey,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: window.physicalSize.height / 5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.grey,
                    color: const Color.fromARGB(255, 153, 96, 96),
                    child: Stack(children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.05, -1.40),
                        child: Container(
                          width: 200,
                          height: 50,
                          color: Colors.grey,
                        ),
                      ),
                      Align(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(),
                              Container(
                                width: window.physicalSize.width,
                                height: 30,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
