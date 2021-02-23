import 'dart:convert';

// import 'package:DrHwaida/models/prodact.dart';
import 'package:DrHwaida/screens/cart/cart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  static String sharedPrefUserSinginKey = 'IsSingIn';
  static String sharedPrefUserselectedProImage = 'IsSelected';
  static String sharedPrefAppLang = 'AppLan';
  static String sharedPrefUserName = 'UserName';
  static String sharedPrefUserUserEmail = 'UserEmail';
  static String sharedPrefUserUserPassrod = 'UserPassword';
  static String sharedPrefUserUserPhone = 'UserPhome';
  static String sharedPrefUserImageUrl = 'userImageUrl';
  static String sharedPrefCartConslProdect = 'cartConsulPro';
  static saveDataOfConsulPro() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    List<String> listConsulPro = Cart.consultProdect
        .map(
          (items) => jsonEncode(
            items.toMap(),
          ),
        )
        .toList();
    preferences.setStringList(sharedPrefCartConslProdect, listConsulPro);
  }

  static getDataOfConsulPro() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    var listConsulPro = preferences.get(sharedPrefCartConslProdect);
    return listConsulPro;
    // Cart.consultProdect = listConsulPro
    //     .map((itmes) => SaveProduct.formMap(jsonDecode(itmes)))
    //     .toList();
  }
}
