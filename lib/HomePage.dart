import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';  // Import the package

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController value=TextEditingController(); // User input for QR code

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Generator',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            value.text.isEmpty?Container():QrImageView(data:value.text,
            version:QrVersions.auto,
            size:300.0,
            ),

            Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  controller: value,
                  decoration: const InputDecoration(labelText: "Enter the text to generate QR",
                  labelStyle: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue)),
                ),

            ),
            Center(
              child: ElevatedButton(onPressed: (){
                setState(() {

                });
              }, child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text("Generate QR",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.blue)),
              ),),
            )
          ],
        ),
      ),
    );
  }
}
