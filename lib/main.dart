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
   Quote(text: 'Be yourself, Everyone one else is already taken',author: 'Brayan'),
    Quote(text: 'I have nothing to declare except my genius', author:'Culio'),
    Quote(text:'The truth is rarely pure and never simple', author:'Waweru'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 16.0, 16.0, 0),
      child: Padding(
        padding:EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.grey.shade600,
            ),

          ),
          SizedBox(height:6.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey.shade800,
            ),
          )
        ],
      ),
      ),
    );
  }
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
         return quoteTemplate(quote);
        }

        ).toList(),
      )
    );
  }
}

