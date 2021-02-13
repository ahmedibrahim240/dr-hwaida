import 'package:DrHwaida/constants/constans.dart';
import 'package:DrHwaida/constants/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function toggleViewSignUp;
  Register({this.toggleViewSignUp});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  String phoneNumber = '';
  String password = '';
  String confirmPassword = '';
  String name = '';
  String error = '';

  bool obscurePassword = true;
  bool obscureconPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customColor,
        toolbarHeight: 0,
      ),
      body: Stack(
        children: [
          CustomAppBar(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/images/logo.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Join Us',
                    style: AppTheme.heading.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                // color: Colors.amber,
              ),
              onPressed: () {
                setState(
                  () {
                    widget.toggleViewSignUp();
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          validator: (val) => val.isEmpty
                              ? 'please enter your phone number'
                              : null,
                          onChanged: (val) {
                            setState(() {
                              phoneNumber = val;
                            });
                          },
                          decoration: textFormInputDecoration(
                            Icons.phone,
                            "Phone number",
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: textFormInputDecorationForPassword(
                            Icons.visibility_off,
                            'password',
                            () {
                              setState(() {
                                obscurePassword = !obscurePassword;
                              });
                            },
                            obscurePassword,
                          ),
                          // validator: (val) => validatePassord(val),
                          obscureText: obscurePassword,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: textFormInputDecorationForPassword(
                            Icons.visibility_off,
                            "Confirm the password",
                            () {
                              setState(() {
                                obscureconPassword = !obscureconPassword;
                              });
                            },
                            obscureconPassword,
                          ),
                          validator: (val) => validateConfrimPassord(
                              val, password, confirmPassword),
                          obscureText: obscureconPassword,
                          onChanged: (val) {
                            setState(() {
                              confirmPassword = val;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        CustomButton(
                          onPress: () {},
                          text: 'Sign Up',
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String validatePassord(String val) {
    if (val.isEmpty) {
      return 'please enter a password';
    } else if (val.length < 6) {
      return 'the password should be at least 6 character';
    } else {
      return null;
    }
  }

  String validateConfrimPassord(
    String val,
    String password,
    String confrimPassord,
  ) {
    if (val.isEmpty) {
      return 'please enter a password';
    } else if (password != confirmPassword) {
      return 'password not matching';
    } else {
      return null;
    }
  }
}