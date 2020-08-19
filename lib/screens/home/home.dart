import 'package:firstmobxproject/controllers/homeController.dart';
import 'package:firstmobxproject/screens/home/components/formWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<HomeController>();

    return Scaffold(
        appBar: AppBar(
            title: Observer(
          builder: (_) => Text(controller.isValidate
              ? 'Formulário Validado'
              : 'Formulário Não Validado'),
        )),
        body: FormWidget());
  }
}
