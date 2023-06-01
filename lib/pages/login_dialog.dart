import 'package:bathu/widgets/customAppBar.dart';
import 'package:bathu/widgets/headingTextWidget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 250,
        child: Dialog(
          elevation: 20,
          backgroundColor: Colors.white,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
