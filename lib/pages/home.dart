import 'dart:html';

import 'package:app_scanner_qr_data/widgets/button_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner App'),
      ),
      body: Center(
        child: Text('Press the button to open the Camera and Scan a QR Code'),
      ),
      floatingActionButton: Align(
        child: ButtonTab(),
        alignment: Alignment(0, 0.5),
      ),
    );
  }
}