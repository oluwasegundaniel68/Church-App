import 'package:flutter/material.dart';

import 'messages_page.dart';

class MessagesPagee extends StatefulWidget {
  const MessagesPagee({super.key});

  @override
  State<MessagesPagee> createState() => _MessagesPageeState();
}

class _MessagesPageeState extends State<MessagesPagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFFFFFF),
     body: Stack(
       children: [
         Positioned.fill(
           child: Column(
             children: [
               Image.asset('images/img_29.png',
               ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 378),
                 child: Container(
                   width: 343,
                   height: 52,
                   decoration: BoxDecoration(
                     color: Color(0xFFFEB92B),
                     borderRadius: BorderRadius.circular(6),
                   ),
                   child: Center(
                     child: Text('Pay Now',
                       style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w600,
                           color: Color(0xFFFEFEFE)
                       ),
                     ),
                   ),
                 ),
               ),
             ],
           ),
         ),
       ],
     ),
    );
  }
}
