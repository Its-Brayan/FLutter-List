import 'package:flutter/material.dart';
import 'Quote.dart';
class QuoteCard extends StatelessWidget{
  final Quote quote;
  final void Function()  delete;
  const QuoteCard({required this.quote,required this.delete});
@override
  Widget build(BuildContext context) {
   return Card(
     margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
     child: Padding(
         padding:EdgeInsets.all(12),
     child:Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children:<Widget> [
         Text(
           quote.text ?? 'no text',
           style: TextStyle(
             fontSize: 18.0,
             color: Colors.grey.shade600,
           ),
         ),
         SizedBox(height: 6.0),
         Text(
           quote.author ?? 'no author',
           style: TextStyle(
             fontSize: 14.0,
             color: Colors.grey.shade600,
           ),
         ),
         SizedBox(height: 6.0),
         OutlinedButton.icon(onPressed:delete,

             label: Text('delete quote'),
              icon: Icon(Icons.delete),
         ),
       ],
     )
     )
   );
  }
}