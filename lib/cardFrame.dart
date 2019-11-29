import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Card Design
class DefaultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text("HI"),
            subtitle: Text('Music by Julie zzz. Lyrics by Sidney Stein.'),
          ),
          Image(
            image: NetworkImage('https://source.unsplash.com/random/400x400'),
            width: 400.0,
            height: 250,
            fit: BoxFit.fill,
          ),
          ButtonControl()
        ],
      ),
    );
  }
}

// Card Button Bar
class ButtonControl extends StatefulWidget {
  @override
  _ButtonControlState createState() => new _ButtonControlState();
}

class _ButtonControlState extends State<ButtonControl> {
  // For Changing Color of icon when click
  bool likeStatus, saveStatus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                likeStatus == true ? likeStatus = false : likeStatus = true;
              });
            },
            icon: Icon(
              FontAwesomeIcons.solidThumbsUp,
              color: likeStatus == true ? Colors.blue : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                saveStatus == true ? saveStatus = false : saveStatus = true;
              });
            },
            icon: Icon(FontAwesomeIcons.solidBookmark,
                color: saveStatus == true ? Colors.blue : Colors.grey),
          )
        ],
      ),
    );
  }
}
