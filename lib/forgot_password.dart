import 'package:church_app/create_account.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
              children: [
          Padding(
          padding: const EdgeInsets.only(top: 48,left: 167.5,right: 167.5),
          child: Image.asset('images/img_5.png'),
                ),
                SizedBox(height: 42,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
                      },
                      child: Icon(Icons.arrow_back,
                      color: Color(0xFF141718),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Text('Reset your password',
                    style: TextStyle(
                      fontSize: 24,
                          fontWeight: FontWeight.w600,
                    ),
                    )
                  ],
                ),
                SizedBox(height: 32,),
                Form(
                    child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF141718),
                            ),
                          ),
                          const SizedBox(height: 8,),
                          TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                                hintText: 'sola@crenet.io',
                                prefixIcon: Icon(Icons.email_rounded,
                                  color: Color(0xff6C7275),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(color: Color(0xFFBCC3D2))
                                )
                            ),
                          ),
                          SizedBox(height: 24,),
                          Container(
                            width: double.infinity,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Color(0xFFFEB92B),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text('Reset Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFEFEFE)
                                ),
                              ),
                            ),
                          ),
                        ]
                    )
                ),
              ]),
        )));
  }
}
