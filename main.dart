import 'package:flutter/material.dart';
import 'package:flutter_application_6/Screen/Scanqr.dart';
import 'package:flutter_application_6/Screen/creatqr.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B C R',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'QrcodeScan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('scan');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Scanqr(),
                  ),
                );
              },
              child: Text('ScanQR'),
            ),
            ElevatedButton(
              onPressed: () {
                print('create');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => createscreen(),
                  ),
                );
              },
              child: Text('CreateQR'),
            ),
          ],
        ),
      ),
    );
  }
}
