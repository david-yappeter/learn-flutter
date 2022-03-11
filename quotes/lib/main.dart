import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
      home: QuoteList(),
    ),
  );
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = <Quote>[
    Quote(author: 'Osca Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Osca Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Osca Wilde', text: 'The truth is rarely pure and never simple'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Awesome Quote"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}
