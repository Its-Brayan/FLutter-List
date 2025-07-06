import 'package:flutter/material.dart';
import 'Quote.dart';

void main() {
  runApp(MaterialApp(
    home:QuoteList() ,
  ));

}
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
   Quote(author: 'Brayan',text: 'step by step'),
    Quote(author: 'Culio', text:'Flutter is interesting'),
    Quote(author:'Waweru', text:'I dont know what Ill do on monday'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:Column(
        children:quotes.map((quote){
          return Text('${quote.author} - ${quote.text}');
        }

        ).toList(),
      )
    );
  }
}

