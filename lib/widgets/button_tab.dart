import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ButtonTab extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.qr_code_scanner),
      onPressed: () async {
        dynamic barcodesScanRes = await FlutterBarcodeScanner.scanBarcode(
              '#A03131', 'Cancelar', false, ScanMode.QR);
        //Aqui valida si los datos que escanea la camara son de tipo String.
        //Si te da problemas el tipo de dato cambiaselo. Pero en principio si recibe un json no debería generar problemas
        if(barcodesScanRes is String)
          Navigator.of(context).pushNamed('/qrDataView',arguments: barcodesScanRes);
      });
  }
}