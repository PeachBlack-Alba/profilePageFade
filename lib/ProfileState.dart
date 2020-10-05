import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:profile/ProfileListItem.dart';

void main() => runApp(ProfileState());


class ProfileState extends StatefulWidget {
  @override
  _ProfileStateState createState() => _ProfileStateState();
}

class _ProfileStateState extends State<ProfileState> {
  static const colorBlau = Color(0xFF88B4E0);
  static const colorMint = Color(0xFF89C9B8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient:LinearGradient(
                        colors: [
                          colorBlau,
                          colorMint,
                        ]
                    ),
                  ),
                ),
                Positioned(
                  top:10.0,
                  left: 30.0,
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon (Icons.arrow_back_ios), color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container (
                            width: 100.0,
                            height: 100.0 ,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/img/woman.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:8.0),
                      Text('Jorja Smith', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0, color: Colors.white),),
                      Text('Resident at the Base', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0, color: Colors.white54),),
                      SizedBox(height: 10.0),
                      /* MaterialButton(
                        onPressed: () {},
                        color: Colors.black87,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        child: Text('Contact', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                      ),*/
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Expanded(
                      child: ListView(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              print('container pressed');
                            },
                            child: ProfileListItems(
                              icon: LineAwesomeIcons.user_shield,
                              text: 'Hobbies',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('container pressed2');
                            },
                            child: ProfileListItems(
                              icon: LineAwesomeIcons.history,
                              text: 'Recent Events',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('container pressed3');
                            },
                            child: ProfileListItems(
                              icon: LineAwesomeIcons.question_circle,
                              text: 'My Contracts',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('container pressed4');
                            },
                            child: ProfileListItems(
                              icon: LineAwesomeIcons.cog,
                              text: 'Configuration',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('container pressed5');
                            },
                            child: ProfileListItems(
                              icon: LineAwesomeIcons.user_plus,
                              text: 'Friends',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('container pressed6');
                            },
                            child: ProfileListItems(
                              icon: LineAwesomeIcons.alternate_sign_out,
                              text: 'Logout',
                              hasNavigation: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),]
          ),
        ),
      ),
    );
  }
}
