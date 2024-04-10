import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPasswordd extends StatefulWidget {
  const ForgotPasswordd({super.key});

  @override
  State<ForgotPasswordd> createState() => _ForgotPassworddState();
}

class _ForgotPassworddState extends State<ForgotPasswordd> {
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
      Text('Forgot Password?',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Color(0xFF141718),
        ),
      ),

    ]
    )
    ),
      SizedBox(height: 24,),
      Text('Enter the email address associated with your account,\nand we’ll email you a link to reset your password.'),
      SizedBox(height: 20,),
      Text(
        'Email',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xFF141718),
        ),
      ),
      SizedBox(height: 8,),
      TextFormField(
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
            hintText: 'Email address',
            prefixIcon: Icon(Icons.email_rounded,
              color: Color(0xff6c727580),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Color(0xFFBCC3D2))
            )
        ),
        onChanged: (String Value){
        },
        validator: (value){
          return value!.isEmpty ? 'Email is required' : null;
        },
      ),
      SizedBox(height: 20,),
      Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          color: Color(0xFFFEB92B),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text('Send link',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E2F)
            ),
          ),
        ),
      ),
    ]
    )
    ))
    );
  }
}
