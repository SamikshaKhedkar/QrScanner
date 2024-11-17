import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenarateQrCode extends StatefulWidget {
  const GenarateQrCode({super.key});

  @override
  State<GenarateQrCode> createState() => _GenarateQrCodeState();
}

class _GenarateQrCodeState extends State<GenarateQrCode> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genarate or code'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlController.text.isNotEmpty)
                QrImage(data: urlController.text, size: 200,),
                SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter data',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter a data'
                  ),
                ),
              ),

              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){

              }, child: const Text('Generate QR COde')),

            ],
          ),
        ),
      ),
    );
  }
}
