import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLoaction extends StatefulWidget {
  const ChooseLoaction({Key? key}) : super(key: key);

  @override
  State<ChooseLoaction> createState() => _ChooseLoactionState();
}

class _ChooseLoactionState extends State<ChooseLoaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Location'),
        centerTitle: true,
      ),
      body: const SafeArea(child: Text("Choose Location")),
    );
  }
}
