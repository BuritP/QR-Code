import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:barcode_widget/barcode_widget.dart';

class createscreen extends StatefulWidget {
  const createscreen({super.key});

  @override
  State<createscreen> createState() => _createscreenState();
}

class _createscreenState extends State<createscreen> {
  String qrString = 'Add data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('creater'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BarcodeWidget(
            color: Colors.black,
            data: qrString,
            height: 250,
            width: 250,
            barcode: Barcode.qrCode(),
          ),
          Container(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  qrString = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your data',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 21),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
