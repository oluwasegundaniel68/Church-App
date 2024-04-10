import 'package:church_app/chatt_page.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
              SizedBox(height: 40,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Enter your verification code',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF141718),
                ),
                ),
              ),
              Row(
                children: [
                  Text('Verification code has been sent to',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF343839),
                  ),
                  ),
                  Text(' email',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Color(0xFF343839),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('address',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Color(0xFF343839),
                  ),
                ),
              ),
              SizedBox(height: 32,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('OTP Token',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF141718),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Color(0xFFBCC3D2),
                  )
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '000000',
                    hintStyle:
                    TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color(0xFF343839),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(color: Color(0xFFBCC3D2)),
                    )
                  ),
                )
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Resend verification code',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF141718),

                  ),
                ),
              ),
              SizedBox(height: 24,),
              GestureDetector(
                onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChattPage()));
    },
                child: Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEB92B),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text('Verify Code',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E1E2F)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Text('Need help? Email',
                  style: TextStyle(
                    fontWeight:FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF6C7275),
                  ),
                  ),
                  Text(' help@zerocomplex.io.',
                    style: TextStyle(
                      fontWeight:FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xFF6C7275),
                    ),
                  )],
              )
        ]
        )));
  }
}
