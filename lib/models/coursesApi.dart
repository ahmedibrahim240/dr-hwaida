import 'package:DrHwaida/models/courses.dart';
import 'package:DrHwaida/models/user.dart';
import 'package:DrHwaida/models/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoursesApi {
  static Future<List<Courses>> fetchAllCourses() async {
    List<Courses> listOfCourses = [];
    var response = await http.get(Utils.COURSES_URL,
        headers: {'Accept': 'application/json', 'x-api-key': User.userToken});
    var jsonData = json.decode(response.body);
    try {
      if (response.statusCode == 200) {
        for (var items in jsonData['data']) {
          Courses courses = Courses(
            id: items['id'],
            title: items['name'],
            contant: items['description'],
            couslNmae: items['instructor']['name'],
            courseImageUrl: items['image_path'],
            type: items['type'],
            rating: items['rate'],
            total_time: items['total_time'],
            newPrice: items['price'],
            discount: items['discount'],
            features: items['features'],
            courseVideoUrl: items['video'],
            lessons: items['lessons'],
          );
          listOfCourses.add(courses);
        }
      }
    } catch (e) {
      print(e);
    }
    return listOfCourses;
  }
}
