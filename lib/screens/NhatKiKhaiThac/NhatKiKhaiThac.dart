import 'package:flutter/material.dart';
import 'package:originproject/components/myButton.dart';
import 'package:originproject/screens/ChuyenTai/ChuyenTai.dart';

class NhatKi extends StatelessWidget {
  const NhatKi({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Nhật kí khai thác',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: screenSize.width*0.06
          ),
        ),
      ),
      body:
          Padding(
            padding: EdgeInsets.all(screenSize.height*0.018),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Số hiệu tàu: BĐ-29283',
                          style: TextStyle(fontSize: screenSize.width*0.045),
                        ),
                        SizedBox(
                          height: screenSize.height*0.017,
                        ),
                        Text(
                          "Chuyến biển: 1",
                          style: TextStyle(
                            fontSize: screenSize.width*0.045,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Mẻ cá: 2",
                          style: TextStyle(fontSize: screenSize.width*0.045),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MyButton(
                            onTap: () {
                              Navigator.pop(context);
                              // Navigate to the QuanLiTau page
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChuyenTai()),
                              );
                            },
                            color: Colors.red,
                            text: 'Chuyển tải',
                            width: 120,
                            height: 40,
                            textStyle: TextStyle(fontSize: screenSize.width*0.045, color: Colors.white)
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: screenSize.height*0.04), // Khoảng cách giữa Row 2 và đường thẳng
                Container(
                  height: 1,
                  color: Colors.black, // Màu của đường thẳng
                ),
                SizedBox(height: screenSize.height*0.03),
                // Use ListView.builder to repeat the rows
                Container(
                  width: screenSize.width*100,
                  height: 550,
                  child: ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: screenSize.width*0.4,
                                    height: screenSize.height*0.14,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.green,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: screenSize.height*0.02,bottom: screenSize.height*0.017),
                                            child: Text(
                                              'Cá ngừ vây vàng',
                                              style: TextStyle(color: Colors.black, fontSize: screenSize.width * 0.045,fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.blue,
                                            width: 170,
                                            height: 2,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: screenSize.height*0.01,bottom: screenSize.height*0.017),
                                            child: Text(
                                              '1200Kg',
                                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: screenSize.width*0.045),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30),
                              Column(
                                children: [
                                  Container(
                                    width: screenSize.width*0.4,
                                    height: screenSize.height*0.14,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.green,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: screenSize.height*0.02,bottom: screenSize.height*0.017),
                                            child: Text(
                                              'Cá ngừ vây vàng',
                                              style: TextStyle(color: Colors.black, fontSize: screenSize.width*0.045,fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.blue,
                                            width: 170,
                                            height: 2,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: screenSize.height*0.01,bottom: screenSize.height*0.017),
                                            child: Text(
                                              '1200Kg',
                                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: screenSize.width*0.045),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.width*0.08),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        

    );
  }
}
