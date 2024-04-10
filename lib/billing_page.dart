import 'package:flutter/material.dart';

import 'chat_history.dart';
import 'chatt_pagee.dart';

class BillingPage extends StatefulWidget {
  const BillingPage({super.key});

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            height: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        automaticallyImplyLeading: false,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChattPagee()),
                );
              },
              child: Image.asset(
                'images/img_7.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 18.36,
              bottom: 18.36,
              right: 167.5,
              left: 127.5,
            ),
            child: Image.asset('images/img_5.png'),
          ),
          Theme(
            data: Theme.of(context).copyWith(
              popupMenuTheme: PopupMenuThemeData(
                color: Color(0xFFFEFEFE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            child: Builder(
              builder: (context) {
                return PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'Chat History',
                      child: Row(
                        children: [
                          Icon(Icons.chat),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChatHistory()),
                              );
                            },
                            child: Text(
                              'Chat History',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Edit chat',
                      child: Row(
                        children: [
                          Icon(Icons.edit),
                          SizedBox(width: 8),
                          Text(
                            'Edit chat',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Delete chat',
                      child: Row(
                        children: [
                          Icon(Icons.delete_rounded),
                          SizedBox(width: 8),
                          Text(
                            'Delete chat',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  child: Image.asset(
                    'images/img_17.png',
                    height: 9,
                    width: 20,
                  ),
                );
              },
            ),
          ),
          SizedBox(width: 26),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 16,),
              child: Text('Payment History',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color:Color(0xFF141718),
                ),
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset('images/img_34.png'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Container(
        height: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
      BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_card_rounded),
            label: 'Billing',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/img_16.png',
              width: 24,
              height: 24,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFFEB92B),
        unselectedItemColor: Color(0xFF6C7275BF),
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    ]
      )
    );
  }
}
