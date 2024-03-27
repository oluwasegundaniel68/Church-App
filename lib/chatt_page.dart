import 'package:church_app/chat_history.dart';
import 'package:church_app/chatt_pagee.dart';
import 'package:church_app/messages_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChattPage extends StatefulWidget {
  const ChattPage({Key? key}) : super(key: key);

  @override
  State<ChattPage> createState() => _ChattPageState();
}

class _ChattPageState extends State<ChattPage> {
  int _selectedIndex = 0;
  bool containerVisible = false;

  void showContainer() {
    setState(() {
      containerVisible = true;
    });
  }

  void hideContainer() {
    setState(() {
      containerVisible = false;
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 16, right: 16),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    'Elevate Your Faith Work',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xFF141718),
                    ),
                  ),
                  Text(
                    'Empower Your Spiritual Journey with Church',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6C7275),
                    ),
                  ),
                  Text(
                    'AI’s Transformative Support',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6C7275),
                    ),
                  ),
                  SizedBox(height: 123),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
                            width: double.infinity,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F5F7),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFF6C727526),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Who is the organizer of the Wine Press Conference?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          width: 343,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F5F7),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFF6C727526),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Where is the venue of the Wine Press Conference?',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    width: double.infinity,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F5F7),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0xFF6C727526),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'When does the Wine Press Conference start and end?',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Container(
                  width: 343,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F5F7),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFF6C727526),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Give me a detailed explanation of faith',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 149),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Hi! What can I help you with?',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Color(0xFF6C7275),
                    ),
                    suffixIcon: Icon(Icons.send_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(color: Color(0xFFBCC3D2)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch(index){
      case 1:Navigator.push(context,MaterialPageRoute(builder: (context)=>MessagesPage()));
    }
  }
}