import 'package:flutter/material.dart';


class DtDetails extends StatelessWidget {
  const DtDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  //for column main axis is y and cross axis is x
        mainAxisAlignment: MainAxisAlignment.center,   //this center is for position of axis it can be : end(end of widget), start, spaceBetween,stretch(takes the full available)...
        children: <Widget>[
          Text(
            'DukoreTech \nWelcome',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "It's software company in country of Burundi, We develop applications: Desktop, mobile and web site,... we project to be a example in our country in the world of Technology. We help others to go ahead in programming, For The Love Of Technology.",
            style: TextStyle(fontSize: 21, height: 1.7),
          ),
        ],
      ),

    );
  }
}