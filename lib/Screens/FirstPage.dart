import 'package:diary_app/Utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    double? height = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: width * 0.20, top: height * 0.02),
            child: const Text(
              Constants.TITLE,
              style: TextStyle(
                  fontSize: 21,
                  fontFamily: "Roboto",
                  color: Color.fromRGBO(255, 215, 0, 0.8)),
            ),
          ),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
          leading: Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: IconButton(
                  color: const Color.fromRGBO(255, 215, 0, 0.8),
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => {
                        showCupertinoModalPopup<void>(
                            barrierDismissible: true,
                            context: context, builder: createDialog),
                      })),
        ),
        body: Container(
          color: const Color.fromRGBO(0, 0, 0, 1),
        ));
  }

  Widget createDialog(BuildContext context) => CupertinoAlertDialog(
        title: const Text("Do you want to exit the application?" , style: TextStyle(
          color: Color.fromRGBO(255, 215, 0, 0.8),
        ),),
        actions: [
          CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop('dialog');
              },
              child: const Text(
                Constants.NO,
                style: TextStyle(color: Colors.white),
              )),
          CupertinoDialogAction(
              onPressed: () {
                SystemNavigator.pop(); // ** Close the entire application.
              },
              child: const Text(
                Constants.YES,
                style: TextStyle(color: Colors.white),
              ))
        ],
      );
}
