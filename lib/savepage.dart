import 'package:flutter/material.dart';
import 'package:flutter_unsplash/navigationControll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_unsplash/cardFrame.dart';
class SavePage extends StatefulWidget{
  @override
  _SavePageState createState() => new _SavePageState();
}

class _SavePageState extends State<SavePage>{
 var selectedPageIndex =1;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Photo"),
        leading: Icon(FontAwesomeIcons.solidBookmark,
      ),
    ),
    bottomNavigationBar:  BottomNavigationBar(
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
    body: ListFrame(),
    );
  }
}

class ListFrame extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return ListView.separated(
      addAutomaticKeepAlives: false,
      cacheExtent: 100.0,
      padding: const EdgeInsets.all(8),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index){
        return  DefaultCard();
      },
      separatorBuilder: (BuildContext context,int index) => const Divider(),
    );
  }
}