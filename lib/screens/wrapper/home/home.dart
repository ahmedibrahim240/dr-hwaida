import 'package:DrHwaida/Consultant/consultant.dart';
import 'package:DrHwaida/constants/constans.dart';
import 'package:DrHwaida/screens/menu/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/homeAppBer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customColor,
        toolbarHeight: 0,
      ),
      key: scaffoldKey,
      drawer: Drawer(
        child: Menu(),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          CustomHomeAppBer(scaffoldKey: scaffoldKey),
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Consultant(),
                  ),
                );
              },
              child: Text('Consultant'),
            ),
          ),
        ],
      ),
    );
  }
}
