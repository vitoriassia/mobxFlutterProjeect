import 'package:firstmobxproject/controllers/homeController.dart';
import 'package:firstmobxproject/screens/components/textField.dart';
import 'package:firstmobxproject/screens/myObservableList/myObeservableList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<HomeController>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) => textField(
                labelText: "Nome:",
                onChanged: controller.client.changeName,
                errorText: controller.validateName(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Observer(
              builder: (_) => textField(
                labelText: "Email:",
                onChanged: controller.client.changeEmail,
                errorText: controller.validateEmail(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Observer(
                builder: (_) => RaisedButton(
                      onPressed: controller.isValidate
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyObservableList()),
                              );
                            }
                          : null,
                      child: Text("Salvar"),
                    ))
          ],
        ),
      ),
    );
  }
}
