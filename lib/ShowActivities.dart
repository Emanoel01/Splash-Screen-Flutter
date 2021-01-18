import "package:flutter/material.dart";
import 'package:splash_screen/model/Atividade.dart';

Widget showActivities(Atividade atividade, BuildContext context) {
  return AlertDialog(
    title: Center(child: Text(atividade.getTitulo),),
    content: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Text(
              "Descrição: " + "\n" + atividade.getDescricao,
              style: TextStyle(fontSize: 28),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Text("Data - " + atividade.getData),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Text("Horário - " + atividade.getHora),
          ),
        ],
      ),
    ),
    actions: [
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Fechar"))
    ],
  );
}
