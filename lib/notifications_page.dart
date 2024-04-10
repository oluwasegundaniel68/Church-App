import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool pushNotificationEnabled = false;
  bool emailEnabled = false;
  bool newsEnabled = false;
  bool isSwitched = false;
  bool accountEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
         child: Form(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Row(
    children: [
    Icon(FontAwesomeIcons.arrowLeftLong,
    color: Color(0xFF141718),
    ),
    SizedBox(width: 17,),
    Text('Notifications',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xFF141718),
    ),
    ),
    ],
    ),
    ),
      SizedBox(height: 24,),
      Row(
        children: [
          Text('Push Notifications',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color:Color(0xFF141718),
          ),
          ),
            Spacer(),
            Switch(value: pushNotificationEnabled,
                onChanged: (value){
              setState(() {
                pushNotificationEnabled = value;
              });
                },
              activeColor:  Color(0xFFE8ECEF),
              inactiveThumbColor: Colors.white,
              activeTrackColor:  Colors.orange,
              inactiveTrackColor:Color(0xFFE8ECEF),
            )
        ],
      ),
          SizedBox(height: 8,),
          Row(
          children: [
          Text('Email',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color:Color(0xFF141718),
          ),
        ),
        Spacer(),
        Switch(value: emailEnabled,
          onChanged: (value){
            setState(() {
              emailEnabled = value;
            });
          },
          activeColor:  Color(0xFFE8ECEF),
          inactiveThumbColor: Colors.white,
          activeTrackColor:  Colors.orange,
          inactiveTrackColor:Color(0xFFE8ECEF),
        )
    ]
    ),
      SizedBox(height: 8,),
      Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('News and Updates',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color:Color(0xFF141718),
                  ),
                ),
                Text('Email and push notifications about offers and new\nupdates.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                )
              ],
            ),
            Spacer(),
            Switch(value: newsEnabled,
              onChanged: (value){
                setState(() {
                  newsEnabled = value;
                });
              },
              activeColor:  Color(0xFFE8ECEF),
              inactiveThumbColor: Colors.white,
              activeTrackColor:  Colors.orange,
              inactiveTrackColor:Color(0xFFE8ECEF),
            )
          ]
      ),
      SizedBox(height: 16,),
      Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Account Support',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color:Color(0xFF141718),
                  ),
                ),
                Text('Receive emails and push notifications about your\naccount support requests',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Spacer(),
            Switch(value:accountEnabled,
              onChanged: (value){
                setState(() {
                  accountEnabled = value;
                });
              },
              activeColor:  Color(0xFFE8ECEF),
              inactiveThumbColor: Colors.white,
              activeTrackColor:  Colors.orange,
              inactiveTrackColor:Color(0xFFE8ECEF),
            )
          ]
      )
         ]
    )
        )
        )
    );
  }
}
