import "package:flutter/material.dart";

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Emanoel Barbosa de Amorim"),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Log out"),
                  )
                ],
              )),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Resumo Atividades"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Safra"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Talhão"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Funcionários"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Manejo"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Safra"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Insumos - Estoque"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Colheita"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Indicadores"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Comercialização"),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text("Lembrete"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
