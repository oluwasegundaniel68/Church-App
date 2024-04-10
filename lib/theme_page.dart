import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';
class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  bool isCheckedLightmode = false;
  bool isCheckedDarkmode = false;
  bool isCheckedSystem = false;
  bool isDarkmode = false;
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
    Text('Change Theme',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xFF141718),
    ),
    ),
    ]
    )
    ),
      SizedBox(height: 25,),
      Row(
        children: [
          Text('Light mode',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xFF141718),
          ),
          ),
          Spacer(),
          Transform.scale(
            scale: 1.333,
            child: Material(
              type: MaterialType.transparency,
              borderRadius: BorderRadius.circular(6),
              child: Checkbox(value:isCheckedLightmode,
                  onChanged: (bool? value){
                setState(() {
                  isCheckedLightmode = value!;
                });
                  },
                activeColor: Colors.orange,
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 8,),
      Row(
        children: [
          Text('Dark mode',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Color(0xFF141718),
            ),
          ),
          Spacer(),
          Transform.scale(
            scale: 1.333,
            child: Material(
              type: MaterialType.transparency,
              borderRadius: BorderRadius.circular(6),
              child: Checkbox(value:isCheckedDarkmode,
                onChanged: (bool? value){
                  setState(() {
                    isCheckedDarkmode = value!;
                  });
                },
                activeColor: Colors.orange,
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 8,),
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('System default',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF141718),
                ),
              ),
              Text('We’ll adjust your appearance based on your device’s\nsystem settings.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              ),
            ],
          ),
          Spacer(),
          Transform.scale(
            scale: 1.333,
            child: Material(
              type: MaterialType.transparency,
              borderRadius: BorderRadius.circular(6),
              child: Checkbox(value:isDarkmode,
                onChanged: (bool? value){
                  setState(() {
                    isDarkmode = value!;
                  });
                },
                activeColor: Colors.orange,
              ),
            ),
          )
        ],
      )
    ]
    )
    )
        )
    );
  }
}
final lightTheme = ThemeData(
);

final darkTheme = ThemeData(
);

void main() {
  runApp(MyApp());
}
