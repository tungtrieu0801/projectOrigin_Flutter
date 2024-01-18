import 'package:flutter/material.dart';
import 'package:originproject/components/myButton.dart';

class TheoDoiHaiTrinh extends StatefulWidget {
  final String tenTau;

  const TheoDoiHaiTrinh({Key? key, required this.tenTau}) : super(key: key);

  @override
  State<TheoDoiHaiTrinh> createState() => _TheoDoiHaiTrinhState();
}

class _TheoDoiHaiTrinhState extends State<TheoDoiHaiTrinh> {
  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _startDate) {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _endDate) {
      setState(() {
        _endDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          '${widget.tenTau}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // Cột cho Ngày bắt đầu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(right: 12.0),
                child: Image.asset(
                  'lib/assets/images/location.png',
                  color: Colors.green,
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ngày bắt đầu',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: _startDate == null
                              ? Text('Chọn ngày', style: TextStyle(fontSize: 20, color: Colors.black))
                              : Text(
                            '${_startDate!.day}/${_startDate!.month}/${_startDate!.year} ',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          height: 40.0,
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () => _selectStartDate(context),
                                child: Icon(Icons.arrow_drop_down, size: 40, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Cột cho Ngày kết thúc
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  'lib/assets/images/location.png',
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ngày kết thúc',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: _endDate == null
                              ? Text('Chọn ngày', style: TextStyle(fontSize: 20, color: Colors.black))
                              : Text(
                            '${_endDate!.day}/${_endDate!.month}/${_endDate!.year}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          height: 40.0,
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () => _selectEndDate(context),
                                child: Icon(Icons.arrow_drop_down, size: 40, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MyButton(
            onTap: () {
              // Kiểm tra xem cả ngày bắt đầu và ngày kết thúc đã được chọn hay chưa
              if (_startDate != null && _endDate != null) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Thông tin tìm kiếm'),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Ngày bắt đầu: ${_startDate!.day}/${_startDate!.month}/${_startDate!.year}'),
                          Text('Ngày kết thúc: ${_endDate!.day}/${_endDate!.month}/${_endDate!.year}'),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Đóng'),
                        ),
                      ],
                    );
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Lỗi'),
                      content: Text('Vui lòng chọn cả ngày bắt đầu và ngày kết thúc.'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Đóng'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            color: Colors.red,
            text: "Tìm kiếm",
            width: 140,
            height: 45,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
