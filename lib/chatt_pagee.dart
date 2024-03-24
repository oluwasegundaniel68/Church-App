import 'package:church_app/chatt_page.dart';
import 'package:flutter/material.dart';

class ChattPagee extends StatefulWidget {
  const ChattPagee({super.key});

  @override
  State<ChattPagee> createState() => _ChattPageeState();
}

class _ChattPageeState extends State<ChattPagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(preferredSize: Size.fromHeight(1.0),
          child:Container(
            height: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 30,),
        child: Column(
          children: [
           Row(
             children: [
               Column(
                 children: [
                   Image.asset('images/img_10.png',
                     width: 24,
                     height: 24,
                   ),
                   Text('Invite Friends',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w600,
                       color:Color(0xFF343839),
                     ),
                   ),
                 ],
               ),
               SizedBox(width: 57,),
               Column(
                 children: [
                   Image.asset('images/img_11.png',
                     width: 24,
                     height: 24,
                   ),
                   Text('Testimonies',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w600,
                       color:Color(0xFF343839),
                     ),
                   ),
                 ],
               ),
              SizedBox(width: 57,),
              Column(
               children: [
                 Image.asset('images/img_12.png',
                   width: 24,
                   height: 24,
                   ),
                Text('Giving',
                style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color:Color(0xFF343839),
                ),
               ),
             ],
           )
          ],
        ),
            SizedBox(height: 24,),
            Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('images/img_13.png',
                            width: 24,
                            height: 24,
                          ),
                          Text('Counselling',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color:Color(0xFF343839),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 93,),
                      Column(
                        children: [
                          Image.asset('images/img_14.png',
                            width: 24,
                            height: 24,
                          ),
                          Text('FAQs',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color:Color(0xFF343839),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 47,),
                      Column(
                        children: [
                          Image.asset('images/img_15.png',
                            width: 24,
                            height: 24,
                          ),
                          Text('Prayer Requests',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color:Color(0xFF343839),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
          ]),
      )
    );
  }
}
