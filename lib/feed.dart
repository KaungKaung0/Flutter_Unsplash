import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_unsplash/navigationControll.dart';
import 'package:flutter_unsplash/cardFrame.dart';
 class MyHomePage extends StatefulWidget{
          @override 
          _MyHomePageState createState() =>new _MyHomePageState();
        }
        class _MyHomePageState extends State<MyHomePage>{
          var selectedPageIndex =0;
          bool isDark = false;
          @override
          Widget build(BuildContext context){
            return Scaffold(
              appBar: AppBar(
                title: Text("Unsplash"),
                actions: <Widget>[
                      Switch(
                        value: isDark,
                        onChanged: (value){
                          setState(() {
                            isDark = value; 
                          });
                        },
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: Colors.black,
                      )
                ],

              ),
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    title: Text("Feed"),
                    icon: Icon(FontAwesomeIcons.newspaper, color: selectedPageIndex == 0 ? Colors.blue : Colors.grey)
                  ),
                  BottomNavigationBarItem(
                    title: Text("Saved"),
                    icon: Icon(FontAwesomeIcons.heart, color: selectedPageIndex == 1 ? Colors.blue : Colors.grey),
                  ),
                ],
                onTap: (index){
                  setState(() {
                    selectedPageIndex = index;
                   navigation(context, index);
                  });
                } ,currentIndex: selectedPageIndex,
              ),
              body: Container(
                child: DefaultCard() 
              )
            );
          }
        }
