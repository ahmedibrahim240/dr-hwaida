import 'package:DrHwaida/constants/constans.dart';
import 'package:DrHwaida/models/user.dart';

import 'package:flutter/material.dart';
import '../../sharedPreferences.dart';
import '../CustomBottomNavigationBar.dart';
import 'conponents/cinsltantAppBar.dart';

import 'conponents/getConsultant.dart';

class ConsultantPage extends StatefulWidget {
  static String fillter;
  @override
  _ConsultantPageState createState() => _ConsultantPageState();
}

class _ConsultantPageState extends State<ConsultantPage> {
  gitfillter() async {
    User.userlat = await MySharedPreferences.getUserLat();
    User.userlong = await MySharedPreferences.getUserlong();
  }

  @override
  void initState() {
    gitfillter();
    print('fillter:' + ConsultantPage.fillter);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customColor,
        toolbarHeight: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 50,
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                consultantAppBer(context),
                getAllConsultant(
                  type: ConsultantPage.fillter,
                  lat: User.userlat,
                  lng: User.userlong,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBar(),
          ),
        ],
      ),
    );
  }
}
