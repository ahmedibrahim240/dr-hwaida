import 'package:DrHwaida/constants/constans.dart';
import 'package:DrHwaida/constants/themes.dart';
import 'package:flutter/material.dart';

// class OnBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     if (UserData.isSingin == true) {
//       return Authenticate();
//     } else {
//       return OnBoarding();
//     }
//   }
// }

class CustomSlider extends StatelessWidget {
  final String title, contant;
  final String image;
  final String backImage;
  CustomSlider({this.backImage, this.contant, this.image, this.title});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              height: height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                title ?? '',
                style: AppTheme.heading.copyWith(color: customColor),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  contant,
                  textAlign: TextAlign.center,
                  style: AppTheme.subHeading.copyWith(
                    height: 1.5,
                    letterSpacing: .07,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
