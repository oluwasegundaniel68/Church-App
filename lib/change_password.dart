import 'package:church_app/forgot_paswordd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isObscure = true;
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
                Text('Change Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF141718),
                  ),
                )
              ],
            ),
          ),
                  SizedBox(height: 24,),
                  Row(
                    children: [
                      Text('Old password',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF232627)
                      ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgotPasswordd()));
                        },
                        child: Text('Forgot passwod',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFFFEB92B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    obscureText: _isObscure,
                    keyboardType: TextInputType.name,
                    decoration:  InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xFF6C727580)
                      ),
                      prefixIcon: Icon(Icons.lock,
                        color: Color(0xFF6C727580),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        child: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xFF6C727580),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Color(0xFFBCC3D2))
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Text('New password',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF232627)
                        ),
                      ),
                      Text('(Minimum 8 characters)',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                            color: Color(0xFF6C727580),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    obscureText: _isObscure,
                    keyboardType: TextInputType.name,
                    decoration:  InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Color(0xFF6C727580)
                      ),
                      prefixIcon: Icon(Icons.lock,
                        color: Color(0xFF6C727580),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        child: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xFF6C727580),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Color(0xFFBCC3D2))
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text('Confirm new password',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF232627)
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    obscureText: _isObscure,
                    keyboardType: TextInputType.name,
                    decoration:  InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Color(0xFF6C727580)
                      ),
                      prefixIcon: Icon(Icons.lock,
                        color: Color(0xFF6C727580),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        child: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xFF6C727580),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Color(0xFFBCC3D2))
                      ),
                    ),
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
                      child: Text('Change password',
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
        )
       )
    );
  }
}
