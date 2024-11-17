import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQrCde extends StatefulWidget {
  const ScanQrCde({super.key});

  @override
  State<ScanQrCde> createState() => _ScanQrCdeState();
}

class _ScanQrCdeState extends State<ScanQrCde> {
  String qrResult = 'Scanned data apper here';
  Future<void> scanQr() async{
    try{
    final qrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'cancle', true, ScanMode.QR);
    if(!mounted) return;
      setState(() {
        this.qrResult = qrCode.toString();

      });
    }on PlatformException
    {
     qrResult = 'Fail to reload the qr code';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR code Scanner'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(height: 30,),
            Text('$qrResult', style: TextStyle(color: Colors.black),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: scanQr,
                child: Text('Scan Code'))
          ]
        ),
      ),
    );
  }
}
