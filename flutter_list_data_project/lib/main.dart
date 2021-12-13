import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuotesState();
  }
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote("Hello motherfucker, my name is Le Son Hai", "Hiro Hai"),
    Quote("Fuck you motherfucker, fucking mother fucker fuck", "Hio"),
    Quote("Shit, don't you ever fuck with me, your fucking cunt", "Kai"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes Demo'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        children: quotes
            .map((q) => QuoteCard(q, () {
                  setState(() {
                    quotes.remove(q);
                  });
                }))
            .toList(),
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
