import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function() delete;

  const QuoteCard(this.quote, this.delete, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(quote.content,
              style: const TextStyle(color: Colors.black, fontSize: 20)),
          const SizedBox(height: 6.0),
          Text(quote.author,
              style: const TextStyle(fontSize: 18, color: Colors.grey)),
          const SizedBox(height: 6.0),
          TextButton.icon(
            onPressed: delete,
            icon: const Icon(Icons.delete_forever_sharp, color: Colors.black),
            label: const Text("Delete", style: TextStyle(color: Colors.black)),
          )
        ],
      ),
    );
  }
}
