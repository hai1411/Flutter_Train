import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int _count = 0;

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Motherfucker',
            style: TextStyle(color: Colors.black, fontSize: 20)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      // body: Center(
      //   child: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.access_alarm_sharp,
      //       color: Colors.black,
      //     ),
      //     // style: ElevatedButton.styleFrom(primary: Colors.red),
      //     // label: const Text("Click me", style: TextStyle(color: Colors.black)),
      //   ),
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(40),
              child: const Text("1"),
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(40),
              child: const Text("2"),
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(40),
              child: const Text("3"),
              color: Colors.grey,
            ),
          ),
        ],
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     const Text("Hello world"),
        //     ElevatedButton(
        //         onPressed: () {
        //           //print("hello");
        //         },
        //         child: const Icon(Icons.ac_unit_sharp)),
        //     Container(
        //       padding: const EdgeInsets.all(50.0),
        //       color: Colors.red,
        //       child: const Text('fuck'),
        //     )
        //   ],
        //const Padding(
        //   padding: EdgeInsets.all(50.0),
        //   child: Text('click'),
        //Container(
        //   padding: const EdgeInsets.symmetric(
        //     vertical: 50.0,
        //     horizontal: 50.0,
        //   ),
        //   margin: const EdgeInsets.all(50.0),
        //   color: Colors.blueGrey,
        //   child: const Text("Hello"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.black),
        onPressed: () => {_count++},
        tooltip: 'Increment Counter',
        backgroundColor: Colors.red,
      ),
    );
  }
}
