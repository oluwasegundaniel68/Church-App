import 'package:flutter/material.dart';

class ListenPage extends StatefulWidget {
  const ListenPage({super.key});

  @override
  State<ListenPage> createState() => _ListenPageState();
}

class _ListenPageState extends State<ListenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(283, 50, 0, 0),
                items: [
                  PopupMenuItem<String>(
                    value: 'English (ENG)',
                    child: Text('English (ENG)'),
                  ),
                  PopupMenuItem(
                    value: 'FRENCH (FRE)',
                    child: Text('FRENCH (FRE)'),
                  ),
                  PopupMenuItem(
                    value: 'Arabic (ARA)',
                    child: Text('Arabic (ARA)'),
                  ),
                ],
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 283, right: 16,),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 76,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEFEFE),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ENG',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      Icon(Icons.arrow_downward_rounded)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/img_33.png'),fit:BoxFit.cover,
                )
              ),
          ),
        ],
      ),
    );
  }
}
