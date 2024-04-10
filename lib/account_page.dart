import 'package:church_app/billing_page.dart';
import 'package:church_app/change_password.dart';
import 'package:church_app/chatt_page.dart';
import 'package:church_app/messages_page.dart';
import 'package:church_app/notifications_page.dart';
import 'package:church_app/theme_page.dart';
import 'package:church_app/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              child: Image.asset('images/img_7.png',
                width: 24,
                height: 24,
              )
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 18.36,
              bottom: 18.36,
              right: 167.5,
              left: 127.5,
            ),
            child: Image.asset('images/img_5.png'),
          ),
          Image.asset(
            'images/img_18.png',
            height: 24,
            width: 24,
          ),
          SizedBox(width: 11),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Image.asset(
                'images/img_35.png',
              height: 32,
              width: 32,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 155.5,right: 155.5),
            child: Image.asset('images/img_35.png',
              height: 64,
              width: 64,
            ),
          ),
          SizedBox(height: 8,),
          Center(
            child: Text('Sola Adebayo',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color(0xFF141718),
              ),
            ),
          ),
          Center(
            child: Text('At least 800x800 px recommended.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF6C7275),
            ),
            ),
          ),
          Center(
            child: Text('JPG or PNG and GIF is allowed',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF6C7275),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 470,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF3F5F7),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16,top: 24),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person,
                          size: 24,
                          color: Color(0xFF6C7275),
                        ),
                        SizedBox(width: 12,),
                        Text('User Profile',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16,),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>UserProfile()));
                            },
                              child: Icon(Icons.arrow_forward_ios_rounded)),
                        ),
                      ],
                    ),
                    SizedBox(height: 28,),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.unlockKeyhole,
                          size: 24,
                          color: Color(0xFF6C7275),
                        ),
                        SizedBox(width: 12,),
                        Text('Password & Security',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16,),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePassword()));
                            },
                              child: Icon(Icons.arrow_forward_ios_rounded)),
                        )
                      ],
                    ),
                    SizedBox(height: 28,),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.bell,
                          size: 24,
                          color: Color(0xFF6C7275),
                        ),
                        SizedBox(width: 12,),
                        Text('Notifications',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16,),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationsPage()));
                            },
                              child: Icon(Icons.arrow_forward_ios_rounded)),
                        )
                      ],
                    ),
                    SizedBox(height: 28,),
                    Row(
                      children: [
                        Icon(Icons.dark_mode_outlined,
                          size: 24,
                          color: Color(0xFF6C7275),
                        ),
                        SizedBox(width: 12,),
                        Text('Change Theme',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16,),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>ThemePage()));
                            },
                              child: Icon(Icons.arrow_forward_ios_rounded)),
                        )
                      ],
                    ),
                    SizedBox(height: 28,),
                    Row(
                      children: [
                        Icon(Icons.help,
                          size: 24,
                          color: Color(0xFF6C7275),
                        ),
                        SizedBox(width: 12,),
                        Text('Help and Support',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                       Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16,),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        )
                      ],
                    ),
                    SizedBox(height: 28,),
                    Row(
                      children: [
                        Icon(Icons.info_rounded,
                          size: 24,
                          color: Color(0xFF6C7275),
                        ),
                        SizedBox(width: 12,),
                        Text('About',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        )
                      ],
                    ),
                    SizedBox(height: 28,),
                    Row(
                      children: [
                        Icon(Icons.login_rounded,
                          size: 24,
                          color: Color(0xFFD92D20),
                        ),
                        SizedBox(width: 12,),
                        Text('Log Out',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFD92D20)
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: 375,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ChattPage()));
                },
                  child: Icon(Icons.chat)),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MessagesPage()));
                },
                  child: Icon(Icons.menu_book_rounded)),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>BillingPage()));
                },
                  child: Icon(Icons.add_card_rounded)),
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
      ),
    );
  }
}
