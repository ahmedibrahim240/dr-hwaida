import 'package:flutter/material.dart';

class Utils {
  //Functions
  static void showSnackBar(BuildContext context, String message) =>
      Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(message)),
        );
  //gitUserImge
  static userImageURL({String gender}) {
    String imgURl;
    switch (gender) {
      case 'Male':
        imgURl = 'lib/images/man.png';
        return imgURl;
        break;
      case 'Female':
        imgURl = 'lib/images/female.png';
        return imgURl;
        break;
      case 'male':
        imgURl = 'lib/images/man.png';
        return imgURl;
        break;

      case 'female':
        imgURl = 'lib/images/female.png';
        return imgURl;
        break;
    }
  }

  // ignore: non_constant_identifier_names
  static final BASE_URL =
      "http://technomasrsystems.com/Demos/Others/ShyBeLbn/public/api";
  // ignore: non_constant_identifier_names
  static final Consultant_URL = BASE_URL + "/consultants";
  // ignore: non_constant_identifier_names
  static final RATE_URL = BASE_URL + "/rates/consultant";
  // ignore: non_constant_identifier_names
  static final REGISTER_URL = BASE_URL + "/clients/register";
  // ignore: non_constant_identifier_names
  static final REGISTERASCONSUL_URL = BASE_URL + "/requests";
  // ignore: non_constant_identifier_names
  static final LOGIN_URL = BASE_URL + "/clients/login";
  // ignore: non_constant_identifier_names
  static final GITUSERDATA_URL = BASE_URL + "/clients/profile";
  // ignore: non_constant_identifier_names
  static final UPDATEUSERDATA_URL = BASE_URL + "/clients/update";
  // ignore: non_constant_identifier_names
  static final CHANGEPASSWORD_URL = BASE_URL + "/clients/change_password";
  // ignore: non_constant_identifier_names
  static final CHECKOUT_URL = BASE_URL + "/visits";
}
