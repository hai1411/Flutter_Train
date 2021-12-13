import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HiroCard(),
  ));
}

class HiroCard extends StatefulWidget {
  const HiroCard({Key? key}) : super(key: key);

  @override
  State<HiroCard> createState() => _HiroCardState();
}

class _HiroCardState extends State<HiroCard> {
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age++;
          });
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('My ID Card'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 60,
              ),
            ),
            const Divider(
              height: 60,
              color: Colors.blueGrey,
            ),
            const Text('NAME',
                style: TextStyle(
                  color: Colors.blueGrey,
                  letterSpacing: 1.5,
                )),
            const SizedBox(height: 3),
            const Text(
              'Hiro Hai',
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('GENDER',
                style: TextStyle(
                  color: Colors.blueGrey,
                  letterSpacing: 1.5,
                )),
            const SizedBox(height: 3),
            const Text(
              'Male',
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('AGE',
                style: TextStyle(
                  color: Colors.blueGrey,
                  letterSpacing: 1.5,
                )),
            const SizedBox(height: 3),
            Text(
              '$age',
              style: const TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('PHONE NUMBER',
                style: TextStyle(
                  color: Colors.blueGrey,
                  letterSpacing: 1.5,
                )),
            const SizedBox(height: 3),
            const Text(
              '0969790938',
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[700]),
                const SizedBox(width: 10),
                const Text('sonhai1411@gmail.com',
                    style: TextStyle(letterSpacing: 1.0, fontSize: 18))
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class Test extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _TestState();
//   }
// }

// class _TestState extends State<Test> {
//   int count = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
