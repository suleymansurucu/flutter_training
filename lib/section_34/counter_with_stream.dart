import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/section_32/main32.dart';
import 'package:flutter_training/section_34/counter_view_model.dart';

void main() {
  runApp(MyCounterWithStream());
}

class MyCounterWithStream extends StatelessWidget {
  MyCounterWithStream({super.key});

  final CounterViewModel counterViewModel = CounterViewModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter with FloatingActionButtons',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Counter with Stream Example'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
                children: [
              StreamBuilder(
                stream: counterViewModel.counterStream,
                builder: (context, snapshot) => Text(
                  snapshot.hasData
                      ? snapshot.data.toString()
                      : 'Value is not found',
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  counterViewModel.decrement();
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  counterViewModel.increment();
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ));
  }
}
