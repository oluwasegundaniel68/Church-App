import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'billing_page.dart';
import 'chatt_page.dart';
import 'messages_page.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final  _lastNameController = TextEditingController();
  final  _firstNameController = TextEditingController();
  final  _phoneNumberController = TextEditingController();
  final  _emailController = TextEditingController();
  final _locationContoller = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 20),
          child: Form(
            key: _key,
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
                      Text('User profile',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Text('First name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF141718)
                ),
                ),
                SizedBox(height: 8,),
                MyTextFormField(
                  hintText: 'Sola',
                  keyboardType: TextInputType.text,
                  icon: Icons.person,
                  color: Color(0xff6C7275),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _firstNameController,
                ),
                SizedBox(height: 12,),
                Text('Last name',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF141718)
                  ),
                ),
                SizedBox(height: 8,),
                MyTextFormField(
                  hintText: 'Adebayo',
                  keyboardType: TextInputType.text,
                  icon: Icons.person,
                  color: Color(0xff6C7275),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _lastNameController,
                ),
                SizedBox(height: 12,),
                Text('Email',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF141718)
                  ),
                ),
                SizedBox(height: 8,),
                MyTextFormField(
                  hintText: 'Sola@crenet.io',
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.person,
                  color: Color(0xff6C7275),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _emailController,
                ),
                SizedBox(height: 12,),
                Text('Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF141718)
                  ),
                ),
                SizedBox(height: 8,),
                MyTextFormField(
                  hintText: '081245374638',
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.person,
                  color: Color(0xff6C7275),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _phoneNumberController,
                ),
                SizedBox(height: 12,),
                Text('Location',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF141718)
                  ),
                ),
                SizedBox(height: 8,),
                MyTextFormField(
                  hintText: 'Sai Gon, Vietnam',
                  keyboardType: TextInputType.text,
                  icon: Icons.person,
                  color: Color(0xff6C7275),
                  borderColor: Color(0xFFBCC3D2),
                  controller:_locationContoller,
                ),
                SizedBox(height: 12,),
                Text("Bio",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF141718)
                  ),
                ),
               SizedBox(height: 18,),
                Container(
                  height: 96,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'At least 800x800 px recommended.\n'
                                    'JPG or PNG and GIF is allowed',
                        prefixIcon: Icon(Icons.person,
                        color: Color(0xFF6C7275),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(color: Color(0xFFBCC3D2))
                        ),
                      ),
                    )
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEB92B),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text('Save changes',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E1E2F)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
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
    )
    );
  }
}

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.icon,
    required this.color,
    required this.borderColor,
    required this.controller,
  });
  final String hintText;
  final TextInputType keyboardType;
  final IconData? icon;
  final Color? color;
  final Color borderColor;
  final TextEditingController controller;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool showHint = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: widget.color
        ),
        prefixIcon: Icon(widget.icon,
          color: Color(0xff343839),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: widget.borderColor)
        )
      ),
      validator: (value) =>
      value!.isEmpty ? 'Enter ${widget.hintText}' : null,
      onChanged: (value) {
        setState(() {
          if (value.isEmpty) {
            showHint = false;
          } else {
            showHint = true;
          }
        });
      },
    );
  }
}
