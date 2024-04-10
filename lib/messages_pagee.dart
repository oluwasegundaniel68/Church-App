import 'package:church_app/listen_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class MessagesPagee extends StatefulWidget {
  const MessagesPagee({Key? key}) : super(key: key);

  @override
  State<MessagesPagee> createState() => _MessagesPageeState();
}

class _MessagesPageeState extends State<MessagesPagee> {
  bool isOverlayVisible = false;
  bool isPaymentSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset('images/img_29.png'),
                    ClipRect(
                      clipBehavior: Clip.hardEdge,
                      child: Positioned(
                        top: 286,
                        left: 27,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 305, left: 16, right: 16),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isOverlayVisible = true;
                              });
                              Future.delayed(Duration(seconds: 5),(){
                                setState(() {
                                  isPaymentSuccessful = true;
                                });
                                if (isPaymentSuccessful){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListenPage()));
                                }
                              }
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 52,
                              decoration: BoxDecoration(
                                color: Color(0xFFFEB92B),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                    isPaymentSuccessful ? Icons.music_note : Icons.lock_outlined,
                                    color: Colors.white,
                                      size: 24,
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      isPaymentSuccessful ? 'Listen Now' : 'Pay Now',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFFEFEFE),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: PreferredSize(
                        preferredSize: Size.fromHeight(50),
                        child: AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          leading: Row(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showMenu(
                                    context: context,
                                    position: RelativeRect.fromLTRB(283, 50, 0, 0),
                                    items: [
                                      PopupMenuItem<String>(
                                        value: 'English (ENG)',
                                        child: Text('English (ENG)'),
                                      ),
                                      PopupMenuItem(
                                        value: 'FRENCH (FRE)',
                                        child: Text('FRENCH (FRE)'),
                                      ),
                                      PopupMenuItem(
                                        value: 'Arabic (ARA)',
                                        child: Text('Arabic (ARA)'),
                                      ),
                                    ],
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 283, right: 16),
                                  child: Container(
                                    width: 76,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFEFEFE),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'ENG',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 16,),
                                          child: Icon(Icons.arrow_downward_rounded),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24,),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'January 24,2024',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF232627),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'The Supernatural Principle of\nChange',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF141718),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'Pastor Bolaji Idowu',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFE8ECEF),
                  ),
                ),
                SizedBox(height: 16,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 103,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade50,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          '₦20,000',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: Color(0xFF141718),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFE8ECEF),
                  ),
                ),
                SizedBox(height: 16,),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16,),
                        child: Text(
                          'Available Languages',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF232627),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Container(
                            width: 65,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFE46B0A1A).withOpacity(0.1),
                            ),
                            child: Center(
                              child: Text(
                                'ENGLISH',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFBC3500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            width: 65,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xF3E90F0).withOpacity(0.15),
                            ),
                            child: Center(
                              child: Text(
                                'FRENCH',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFF3E90F0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            width: 65,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFE46B0A1A).withOpacity(0.1),
                            ),
                            child: Center(
                              child: Text(
                                'ARABIC',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFDA1821),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          if (isOverlayVisible)
            GestureDetector(
              onTap: () {
                setState(() {
                  isOverlayVisible = false;
                });
              },
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      width: 343,
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         Container(
                           width: 343,
                           height: 316,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(16),
                             color: Color(0xFFFEFEFE),
                           ),
                           child: Image.asset('images/img_31.png',
                           width: 128,
                             height: 128,
                           ),
                         )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}