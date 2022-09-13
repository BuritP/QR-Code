import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Scanqr extends StatefulWidget {
  const Scanqr({super.key});

  @override
  State<Scanqr> createState() => _ScanqrState();
}

class _ScanqrState extends State<Scanqr> {
  late double height, width;
  String qrString = 'not scanned';
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanqr'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            qrString,
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: scanQR,
            child: Text('Scan QR Code'),
          ),
          SizedBox(width: width),
        ],
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'Cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrString = value;
        });
      });
    } catch (e) {
      setState(() {
        qrString = 'unable to read the qr';
      });
    }
  }
}
