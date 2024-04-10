import 'package:church_app/forgot_password.dart';
import 'package:church_app/login_page.dart';
import 'package:church_app/verify_email.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _isObscure = true;
  final  _lastNameController = TextEditingController();
  final  _firstNameController = TextEditingController();
  final  _phoneNumberController = TextEditingController();
  final  _emailController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 48, left: 167.5, right: 167.5),
                  child: Image.asset('images/img_5.png'),
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration:  BoxDecoration(
                      color: const Color(0xFFF3F5F7),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 8,bottom: 8,left: 62.5,right: 62.5),
                              child: GestureDetector(
                                onTap: (){
                Navigator.pop(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                                child: Text('Log in',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF232627),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding:EdgeInsets.only(left: 37.5),
                          child: Container(
                            width: 163.5,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFFEFEFE),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child:  Text('Create account',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xFF6C7275)
                                ),
                            ),
                          ),
                        ),
                        )
                      ],
                    ),
                  ) ,
                ),
                SizedBox(height: 24,),
                const Text(
                  'First Name',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF141718),
                  ),
                ),
                const SizedBox(height: 8),
                MyTextformfield(hintText: 'First name',
                  keyboardType: TextInputType.name,
                  icon: Icons.person,
                  color: Color(0xff6c727580),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _firstNameController,),
                const SizedBox(height: 8),
                const Text(
                  'Last Name',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF141718),
                  ),
                ),
                const SizedBox(height: 8),
                MyTextformfield(hintText: 'Last name',
                  keyboardType: TextInputType.name,
                  icon: Icons.person,
                  color: Color(0xff6c727580),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _lastNameController,),
                const SizedBox(height: 8),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF141718),
                  ),
                ),
                const SizedBox(height: 8),
                MyTextformfield(hintText: 'Email',
                  keyboardType: TextInputType.name,
                  icon: Icons.email_rounded,
                  color: Color(0xff6c727580),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _emailController,),
                const SizedBox(height: 8),
                const Text(
                  'Phone Number',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF141718),
                  ),
                ),
                const SizedBox(height: 8),
                MyTextformfield(hintText: 'phoneNumber',
                  keyboardType: TextInputType.name,
                  icon: Icons.phone,
                  color: Color(0xff6c727580),
                  borderColor: Color(0xFFBCC3D2),
                  controller: _phoneNumberController,),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF141718),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFEB92B),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                TextFormField(
                  obscureText: _isObscure,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF6C727580),
                    ),
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Color(0xFFBCC3D2))
                      ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      child: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF6C727580),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Password must be a minimum of 8 characters, '
                      'including at least\n1 number, '
                      '1 lowercase, and 1 uppercase letter.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF6C7275),
                  ),
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    if (_key.currentState?.validate() ?? false) {
                      _key.currentState?.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyEmail(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEB92B),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E1E2F),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'By creating an account, you agree to our',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF6C7275),
                      ),
                    ),
                    Text(
                      " Terms of Service ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextformfield extends StatefulWidget {
  const MyTextformfield({
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
  final Color color;
  final Color borderColor;
  final TextEditingController controller;

  @override
  State<MyTextformfield> createState() => _MyTextformfieldState();
}

class _MyTextformfieldState extends State<MyTextformfield> {
  bool showHint = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration:  InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(
          widget.icon,
          color: widget.color,
        ),
        border:OutlineInputBorder(
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
