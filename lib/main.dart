import 'package:flutter/material.dart';
import "package:splash_screen/Splash.dart";
import 'package:intl/date_symbol_data_local.dart';

void main() {
   initializeDateFormatting("pt_BR",null).then((_) => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Splash(),
  )));
}
