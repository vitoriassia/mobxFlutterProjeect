import 'package:firstmobxproject/controllers/list_controller.dart';
import 'package:firstmobxproject/screens/myObservableList/components/item.widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MyObservableList extends StatefulWidget {
  @override
  _MyObservableListState createState() => _MyObservableListState();
}

class _MyObservableListState extends State<MyObservableList> {
  final controller = GetIt.I.get<MyListController>();

  _dialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar Item'),
            content: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Novo Item'),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Salvar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: "Pesquisa ..."),
        ),
      ),
      body: ListView.builder(
          itemCount: controller.listItems.length,
          itemBuilder: (_, index) {
            return ItemWidget(
              title: controller.listItems[index].title,
              check: controller.listItems[index].check,
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
