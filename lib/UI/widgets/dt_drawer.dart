import 'package:flutter/material.dart';

class DtDrawer extends StatefulWidget {
  const DtDrawer({
    Key key,
  }) : super(key: key);

  @override
  _DtDrawerState createState() => _DtDrawerState();
}

class _DtDrawerState extends State<DtDrawer> {
  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              InkWell(
                onTap: () {},
                child: Text(
                  'Home',
                  style: TextStyle(color: const Color(0xff23a8f2), fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: const Color(0xffd86310),
                  thickness: 2,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Text(
                  'Service',
                  style: TextStyle(color: const Color(0xff23a8f2), fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: const Color(0xffd86310),
                  thickness: 2,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Text(
                  'Portfolio',
                  style: TextStyle(color: const Color(0xff23a8f2), fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: const Color(0xffd86310),
                  thickness: 2,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Text(
                  'About',
                  style: TextStyle(color: const Color(0xff23a8f2), fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: const Color(0xffd86310),
                  thickness: 2,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Text(
                  'Contact Us',
                  style: TextStyle(color: const Color(0xff23a8f2), fontSize: 22),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2021 | DukoreTech',
                    style: TextStyle(
                      color: const Color(0xffd86310),
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
