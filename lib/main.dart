import 'package:flutter/material.dart';
import 'package:scanner_qr_code/genarate_qr_code.dart';
import 'package:scanner_qr_code/update_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qr Code generation',
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr code Scanner and gneartion'),
        backgroundColor: Colors.blue,

      ),
      body: Center(
       child:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(onPressed: () {
            setState(() {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScanQrCde()));

            });
           }, child:Text('Sacn QR Code')),
           SizedBox(height: 40,),
           ElevatedButton(onPressed: (){
             setState(() {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenarateQrCode()));
             });
           }, child: Text('Scann QR Code'))
           
         ],
       ),

      ),
    );
  }
}

