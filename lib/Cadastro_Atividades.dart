import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:splash_screen/Home.dart';
import 'model/Atividade.dart';
import "package:table_calendar/table_calendar.dart";

class CadastroAtividade extends StatefulWidget {
  @override
  _CadastroAtividadeState createState() => _CadastroAtividadeState();
}

class _CadastroAtividadeState extends State<CadastroAtividade> {
  TextEditingController _controllerTitulo = TextEditingController();
  TextEditingController _controllerDescricao = TextEditingController();
  TextEditingController _controllerHorario = TextEditingController();
  CalendarController _calendarController;

  String convertDate(String data) {
    String dateConverted = "";
    try {
      List<String> dateAndHour = data.split(" ");
      List<String> dates = dateAndHour[0].split("-");
      dateConverted = dates[2] + "/" + dates[1] + "/" + dates[0];
    } catch (e) {
      print(e);
    }
    return dateConverted;
  }

  adicionarAtividade() {
    Atividade atividade = Atividade();
    atividade.setData = convertDate(_calendarController.selectedDay.toString());
    atividade.setDescricao = _controllerDescricao.text;
    atividade.setTitulo = _controllerTitulo.text;
    atividade.setHora = _controllerHorario.text;
    atividade.setStatus = false;

    setState(() {
      Home.atividades.add(atividade);

      //_controllerDescricao.text = "";
      //_controllerTitulo.text = "";
      //_controllerHorario.text = "";

      print("Tamanho lista = " + Home.atividades.length.toString());
      print("titulo = " +
          atividade.getTitulo +
          "\n" +
          "Descrição" +
          atividade.getDescricao);
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Home())
    );
    // Navigator.of(context).maybePop();
  }

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Adicionar Atividade"),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: TextField(
                      controller: _controllerTitulo,
                      decoration: InputDecoration(labelText: "Titulo"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: TextField(
                      controller: _controllerDescricao,
                      decoration: InputDecoration(labelText: "Descrição"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: TableCalendar(
                      locale: "pt_BR",
                      initialCalendarFormat: CalendarFormat.twoWeeks,
                      calendarController: _calendarController,
                      calendarStyle: CalendarStyle(
                        outsideDaysVisible: false,
                      ),
                      headerStyle: HeaderStyle(formatButtonVisible: false),
                      availableGestures: AvailableGestures.none,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      controller: _controllerHorario,
                      decoration: InputDecoration(
                        labelText: "Horario",
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancelar")),
                      FlatButton(
                          onPressed: () {
                            adicionarAtividade();
                          },
                          child: Text("Adicionar")),
                      FlatButton(
                          onPressed: () {
                            print("Titulo Lista último colocado = " +
                                Home.atividades[Home.atividades.length - 1]
                                    .getTitulo);
                          },
                          child: Text("data"))
                    ],
                  )
                ],
              ),
            )));
  }
}
