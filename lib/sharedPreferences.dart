import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  static String sharedPrefUserSinginKey = 'IsSingIn';
  static String sharedPrefUserSkipLogIn = 'SkipLogIn';
  static String sharedPrefUserLat = 'Lat';
  static String sharedPrefUserLong = 'Long';
  static String sharedPrefUserselectedProImage = 'IsSelected';
  static String sharedPrefAppLang = 'AppLan';
  // static String sharedPrefApiLang = 'ApiLang';
  static String sharedPrefUserPre = 'pref';
  static String sharedPrefUserName = 'UserName';
  static String sharedPrefUserUserEmail = 'UserEmail';
  static String sharedPrefUserUserAge = 'UserAge';
  static String sharedPrefUserUserGender = 'Usergender';
  static String sharedPrefUserUserStutes = 'UserStuts';
  static String sharedPrefUserUserPhone = 'UserPhome';
  static String sharedPrefUserUserPassword = 'UserPassword';
  static String sharedPrefUserImageUrl = 'userImageUrl';
  static String sharedPrefUserToken = 'userToken';
  static String sharedPrefCartConslProdect = 'cartConsulPro';
  static String sharedPrefCounsultFillterIndex = 'FillterIndex';
  static String sharedPrefCounsultFillterType = 'FillterType';
  static String sharedPrefCoursesFillterIndex = 'FillterIndex';
  static String sharedPrefCoursesFillterType = 'FillterType';
  //save data
  static Future<bool> saveUserSingIn(bool isSingin) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(sharedPrefUserSinginKey, isSingin);
  }

  static Future<bool> saveUserSkipLogIn(bool isSkipLogIn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(sharedPrefUserSkipLogIn, isSkipLogIn);
  }

  static Future<bool> saveUserselectedProImage(bool isSelected) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(
        sharedPrefUserselectedProImage, isSelected);
  }

  static Future<bool> saveUserUserName(String userName) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserName, userName);
  }

  static Future<bool> saveFilltterIndex(int index) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setInt(sharedPrefCounsultFillterIndex, index);
  }

  static Future<bool> saveFilltterType(String type) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefCounsultFillterType, type);
  }

  static Future<bool> saveCoursesFilltterIndex(int index) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setInt(sharedPrefCoursesFillterIndex, index);
  }

  static Future<bool> saveCoursesFilltterType(String type) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefCoursesFillterType, type);
  }

  static Future<bool> saveUserlat(String lat) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserLat, lat);
  }

  static Future<bool> saveUserlong(String long) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserLong, long);
  }

  static Future<bool> saveUserUserPassword(String userPasswrod) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(
        sharedPrefUserUserPassword, userPasswrod);
  }

  static Future<bool> saveUserUserToken(String userToken) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserToken, userToken);
  }

  static Future<bool> saveAppLang(String appLang) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefAppLang, appLang);
  }

  // static Future<bool> saveApiLang(String apiLang) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.setString(sharedPrefApiLang, apiLang);
  // }

  static Future<bool> saveUserPrfe(String appLang) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserPre, appLang);
  }

  static Future<bool> saveUserUserEmail(String userEmail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserUserEmail, userEmail);
  }

  static Future<bool> saveUserUserAge(String userAge) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserUserAge, userAge);
  }

  static Future<bool> saveUserUserGender(String userGender) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserUserGender, userGender);
  }

  static Future<bool> saveUserUserStutas(String userStutes) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserUserStutes, userStutes);
  }

  static Future<bool> saveUserUserPhoneNumber(String userPhoneNumber) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(
        sharedPrefUserUserPhone, userPhoneNumber);
  }

  static Future<bool> saveUserImageUrl(String userImageUrl) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPrefUserImageUrl, userImageUrl);
  }

  // getdata
  static getUserSingIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var isSingin = (preferences.getBool(sharedPrefUserSinginKey) ?? false);
    return isSingin;
  }

  static getUserSkipLogIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var isSkipLogIn = (preferences.getBool(sharedPrefUserSkipLogIn) ?? false);
    return isSkipLogIn;
  }

  static getUserselectedProImage() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var isSelected =
        (preferences.getBool(sharedPrefUserselectedProImage) ?? false);
    return isSelected;
  }

  static getUserUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String name = preferences.getString(sharedPrefUserName);
    return name;
  }

  static getFiltterIndex() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int index = preferences.getInt(sharedPrefCounsultFillterIndex);
    return index;
  }

  static getFiltterType() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String type = preferences.getString(sharedPrefCounsultFillterType);
    return type;
  }

  static getCoursesFiltterIndex() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int index = preferences.getInt(sharedPrefCoursesFillterIndex);
    return index;
  }

  static getCoursesFiltterType() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String type = preferences.getString(sharedPrefCoursesFillterType);
    return type;
  }

  static getUserLat() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String lat = preferences.getString(sharedPrefUserLat);
    return lat;
  }

  static getUserlong() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String long = preferences.getString(sharedPrefUserLong);
    return long;
  }

  static getUserUserPassword() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String password = preferences.getString(sharedPrefUserUserPassword);
    return password;
  }

  static getUserUserToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString(sharedPrefUserToken);
    return token;
  }

  static getAppLang() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var appLang = preferences.getString(sharedPrefAppLang);
    return appLang;
  }

  // static getApiLang() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   var appLang = preferences.getString(sharedPrefApiLang);
  //   return appLang;
  // }

  static getUserPre() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var appLang = preferences.getString(sharedPrefUserPre);
    return appLang;
  }

  static getUserUserEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String email = preferences.getString(sharedPrefUserUserEmail);
    return email;
  }

  static getuserImageUrl() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userImageUrl = preferences.getString(sharedPrefUserImageUrl);
    return userImageUrl;
  }

  static getUserUserAge() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String age = preferences.getString(sharedPrefUserUserAge);
    return age;
  }

  static getUserUserGender() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String age = preferences.getString(sharedPrefUserUserGender);
    return age;
  }

  static getUserUserStutes() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String age = preferences.getString(sharedPrefUserUserStutes);
    return age;
  }

  static getUserUserPhoneNumber() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String phoneNamber = preferences.getString(sharedPrefUserUserPhone);
    return phoneNamber;
  }

  // static saveDataOfConsulPro(value) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   var listConsulPro = value
  //       .map(
  //         (items) => jsonEncode(
  //           items.toMap(),
  //         ),
  //       )
  //       .toList();
  //   await preferences.setStringList(sharedPrefCartConslProdect, listConsulPro);
  // }

  // static getDataOfConsulPro() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();

  //   var listConsulPro = preferences.getStringList(sharedPrefCartConslProdect);

  //   return listConsulPro
  //       .map((itmes) => SaveProduct.formMap(jsonDecode(itmes)))
  //       .toList();
  // }
}
