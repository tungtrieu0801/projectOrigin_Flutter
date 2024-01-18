import 'package:flutter/material.dart';
import 'package:originproject/components/myButton.dart';

class QuanLiTau extends StatefulWidget {
  @override
  _QuanLiTauState createState() => _QuanLiTauState();
}

class _QuanLiTauState extends State<QuanLiTau> {
  int selectedTrainIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Quản lí tàu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Đang tìm kiếm')));
            },
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(6),
          itemCount: 15, // Số lượng tàu bạn muốn hiển thị
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    leading: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'lib/assets/images/bg.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Tàu ${index + 1}-2931278',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: MyButton(
                              onTap: () {
                                setState(() {
                                  selectedTrainIndex =
                                  (selectedTrainIndex == index) ? -1 : index;
                                });
                              },
                              color: Colors.green,
                              text: 'Thông tin',
                              width: 100,
                              height: 40,
                              textStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300), // Thời gian animation (0.3 giây)
                    height: selectedTrainIndex == index ? 200 : 0,
                    curve: Curves.easeInOut,
                    child: selectedTrainIndex == index
                        ? Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Số hiệu tàu ${index + 1}',
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  'Thuyền trưởng: Nguyễn Văn A',
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  'Loại thiết bị: VSM',
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  'Tên thiết bị: VHK-S',
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  'Số imeil: 1283218731',
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  "Số kẹp chì: VHK-92382",
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  "Ngày niêm phong: 20/1/2006",
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
