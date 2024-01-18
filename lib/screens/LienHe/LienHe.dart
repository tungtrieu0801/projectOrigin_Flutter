import 'package:flutter/material.dart';

class LienHe extends StatefulWidget {
  const LienHe({Key? key});

  @override
  State<LienHe> createState() => _LienHeState();
}

class _LienHeState extends State<LienHe> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Liên hệ',
          style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),

        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.05),
                  child: const Text(
                    'NHÀ SẢN XUẤT VÀ PHÂN PHỐI',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                  children: [
                    // Add the image here
                    Image.asset(
                      'lib/assets/images/img_contact.png',
                      height: 200, // Adjust the height as needed
                      width: 200, // Adjust the width as needed
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),

                    Text(
                      "Công ty TNHH Công nghệ SmartRF Việt Nam",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center, // Center text
                    ),

                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),

                    const Text(
                      "Địa chỉ: 18 Hoàng Quốc Việt, Nghĩa Đô",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center, // Center text
                    ),

                    SizedBox(
                      height: screenSize.height * 0.004,
                    ),

                    const Text(
                      "Cầu Giấy, Hà Nội ",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center, // Center text
                    ),

                    SizedBox(
                      height: screenSize.height * 0.028,
                    ),

                    const Text(
                      "Hotline: 091356090",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                          decorationThickness: 2.0,
                        decorationColor: Colors.blue// Thêm gạch chân
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.28,
                    ),
                    const Text(
                      "Copyright © 2023",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center, // Center text
                    ),
                    const Text(
                      "Công ty TNHH Công nghệ SmartRF Việt Nam",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center, // Center text
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
