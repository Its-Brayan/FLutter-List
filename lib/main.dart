import 'package:flutter/material.dart';
import 'Quote.dart';
import 'quote_card.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:ListView(
        children:quotes.map((quote){
         return QuoteCard(
             quote:quote,
         delete:(){
               setState(() {
                 quotes.remove(quote);
               });
         });
        }

        ).toList(),
      )
    );
  }
}

