import 'package:church_app/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
bool isDarkMode = false;
class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? darkTheme : lightTheme,
      home:OnboardingScreen(),
    );
  }
}
class MyHomePage extends StatelessWidget {

  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Dark mode',
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
                  child: Checkbox(
                    value: isDarkMode,
                    onChanged: (bool? value) {
                      setState(() {
                        isDarkMode = value!;
                      });
                    },
                    activeColor: Colors.orange,
                  ),
                ),
              )
            ],
          ),
          // Other widgets...
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}

final lightTheme = ThemeData(
  // Define your light theme here
);

final darkTheme = ThemeData(
  // Define your dark theme here
);

