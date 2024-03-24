import 'package:church_app/create_account.dart';
import 'package:church_app/forgot_password.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48,left: 167.5,right: 167.5),
              child: Image.asset('images/img_5.png'),
            ),
            const SizedBox(height: 24,),
            Container(
              width: 335,
              height: 48,
              decoration: BoxDecoration(
                  color: const Color(0xFFF3F5F7),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Container(
                      width: 163.5,
                      height: 40,
                      margin: const EdgeInsets.only(left: 2,right: 2,top: 4,bottom: 4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFEFEFE),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('Log in',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF232627),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
                        },
                      child: const Text('Create account',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF6C7275)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24,),
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
                        hintText: 'Username or email',
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
                    const SizedBox(height: 16,),
                    Form(
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                                  },
                                  child: Text('Forgot password?',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFFEB92B),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 8,),
                            TextFormField(
                              obscureText: _isObscure,
                              keyboardType: TextInputType.name,
                              decoration:  InputDecoration(
                                  hintText: 'Password',
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
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      borderSide: BorderSide(color: Color(0xFFBCC3D2))
                                  ),
                              ),
                            ),
                  ],
                ),
            ),
          ],
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
               child: Text('Log in',
               style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w600,
                 color: Color(0xFF1E1E2F)
               ),
               ),
             ),
           ),
            SizedBox(height: 24,),
            Row(
              children: [
                SizedBox(
                  width: 139,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Spacer(),
                Text('OR',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xFF6C727580),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 139,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFFE8ECEF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14,bottom: 14,left: 69.5,),
                child: Row(
                  children: [
                    Image.asset('images/img_6.png'),
                    SizedBox(width: 16,),
                    Align(
                      alignment: Alignment.center,
                      child: Text('Continue with Google',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6C7275),
                      ),
                      ),
                    )
                  ],
                ),
              ),
            )
    ]
    )));
  }
}
