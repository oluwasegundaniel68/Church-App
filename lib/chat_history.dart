import 'package:church_app/chatt_page.dart';
import 'package:flutter/material.dart';

class ChatHistory extends StatefulWidget {
  const ChatHistory({super.key});

  @override
  State<ChatHistory> createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom:PreferredSize(preferredSize: Size.fromHeight(1.0),
          child: Container(
            height: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
        ) ,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFE8ECEF))
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 18,bottom: 18,),
                  child: Text(
                    'Chat history',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF6C7275BF),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 275),
                  child: Container(
                    width: 24,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFE8ECEF),
                    ),
                    child: Center(
                      child: Text('0',
                        style: TextStyle(
                          color: Color(0xFF6C7275),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 592,left: 295,),
            child: ElevatedButton(
                onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFEB92B),
                minimumSize: Size(64, 64),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
                child:Icon(Icons.add,
                color: Color(0xFF141718),
                ),
            ),
          )
        ],
      ),
    );
  }
}
