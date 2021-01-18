import "package:flutter/material.dart";
import 'package:splash_screen/MyDrawer.dart';
import './model/Atividade.dart';
import "Cadastro_Atividades.dart";
import "./ShowActivities.dart";

class Home extends StatefulWidget {
  static List<Atividade> atividades = [];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    Atividade compra = Atividade();
    compra.setTitulo = "Fazer compras";
    compra.setDescricao = "Ir no mercado e comprar coisas";
    compra.setData = "10/12/2020";
    compra.setHora = '11:30';
    compra.setStatus = false;

    Atividade dormir = Atividade();
    dormir.setTitulo = "Ir domir";
    dormir.setDescricao = "Deitar na cama e dormir";
    dormir.setData = "10/12/2020";
    dormir.setHora = '15:00';
    dormir.setStatus = false;

    // Home.atividades.add(compra);
    // Home.atividades.add(dormir);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          " Agropad",
          style: TextStyle(decoration: TextDecoration.none),
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: Home.atividades.length,
                  itemBuilder: (context, index) {
                    context.findRenderObject();
                    return CheckboxListTile(
                      value: Home.atividades[index].getStatus,
                      onChanged: (value) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Center(child: Text("Atualizando status da atividade"),),
                                actions: [
                                  FlatButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return showActivities(
                                                    Home.atividades[index],
                                                    context);
                                              });
                                        },
                                        child: Text("Vizualizar")),
                                  FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          Home.atividades[index].setStatus =
                                              value;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("Atualizar")
                                  )
                                ],
                              );
                            });
                      },
                      title: Text(Home.atividades[index].getTitulo),
                      subtitle: Text(Home.atividades[index].getData),
                    );
                  }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Atividade compra = Atividade();
          // compra.setTitulo = "Fazer compras";
          // compra.setDescricao = "Ir no mercado e comprar coisas";
          // compra.setData = "10/12/2020";
          // compra.setHora = '11:30';
          // compra.setStatus = false;

          // setState(() {
          //   Home.atividades.add(compra);
          // });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CadastroAtividade()));
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
