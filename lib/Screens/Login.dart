import 'package:diary_app/Utils/Constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    double? height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Padding(
            padding:  EdgeInsets.only(left : width * 0.20 , top: height * 0.02),
            child: const Text(
              Constants.TITLE,
              style: TextStyle(
                fontSize: 21,
                fontFamily: "Roboto",
                color: Color.fromRGBO(255, 215, 0, 0.8)
              ),
              ),
          ),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
          leading: Padding(
            padding: EdgeInsets.only(top : height * 0.01),
            child: IconButton(
              color: const Color.fromRGBO(255, 215, 0, 0.8),
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => {
                print("back button clicked")
              },
            ),
          ),
        ),
        body: Container(
          color: const Color.fromRGBO(0,0,0,1),
        ));
  }
}
