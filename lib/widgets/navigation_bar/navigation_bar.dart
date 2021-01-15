import 'package:flutter/material.dart';


/*A stream is a reusable piece of code that abstracts
 the complexity of dealing with data while providing useful operations to perform on data.*/


class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(     //for row main axis is x and cross axis is y
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  //this spaceBetween is for position of axis it can be : end(end of widget), center, min,...
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('lib/assets/dtlogo.png'),
            ),
            Row(    //for row main axis is x and cross axis is y
              mainAxisSize: MainAxisSize.min,     //this min is for position of axis it can be : end(end of widget), center, spaceBetween,stretch(takes the full available)...
              children: <Widget>[
                
                _NavBarItem('Home'),
                SizedBox(
                  width: 30,
                ),
                _NavBarItem('Service'),
                 SizedBox(
                  width: 30,
                ),

                _NavBarItem('Portfolio'),
                 SizedBox(
                  width: 30,
                ),

                _NavBarItem('About'),
                 SizedBox(
                  width: 30,
                ),

                _NavBarItem('Contacts'),
                 SizedBox(
                  width: 30,
                ),


            ],)
        ],
      ),
      
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 24, color: Color.fromRGBO(61, 89, 171, 1.0),),);
  }
}
