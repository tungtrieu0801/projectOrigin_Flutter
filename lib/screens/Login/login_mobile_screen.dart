
import 'package:flutter/material.dart';
import 'package:originproject/screens/Home%20scrren/home_mobile_screen.dart';
import '../../components/constants.dart';
import '../../components/myButton.dart';
import '../../components/my_text_field.dart';
import '../../components/my_text_file_password.dart';


class MobileLoginLayout extends StatefulWidget {
  const MobileLoginLayout({super.key});

  @override
  State<MobileLoginLayout> createState() => _MobileLoginLayoutState();
}

class _MobileLoginLayoutState extends State<MobileLoginLayout> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Center(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Logo
                  SizedBox(
                    height: screenSize.height * 0.09,
                  ),
                  Image.asset(
                    'lib/assets/images/bg.png',
                    width: screenSize.width * 0.42,
                    height: screenSize.height * 0.17,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text(
                    "Đăng nhập!",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w800,
                      color: bigTextColor,
                      fontFamily: 'SecularOne',
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.1,
                  ),
                  MyTextField(
                    controller: usernameController,
                    hintText: "Nhập tài khoản",
                    obscureText: false,
                    image: Image.asset(
                      'lib/assets/images/user.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),

                  MyTextFieldpassword(
                    controller: passwordController,
                    hintText: "Nhập mật khẩu",
                    obscureText: true,
                    image: Image.asset(
                      'lib/assets/images/lock.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.07,
                  ),

                  MyButton(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MyHomePage();
                      }));
                    },
                    color: buttonColor,
                    text: "Đăng nhập",
                    width: 150,
                    height: 40,
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Secular One',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.13,
                  ),
                  const Text(
                    "Copyright © 2024 ",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  const Text(
                    "Công ty TNHH Công nghệ SmartRF Việt Nam",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
