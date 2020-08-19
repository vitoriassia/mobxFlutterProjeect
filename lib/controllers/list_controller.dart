import 'package:firstmobxproject/models/item_model.dart';
import 'package:mobx/mobx.dart';
part 'list_controller.g.dart';

class MyListController = _MyListControllerBase with _$MyListController;

abstract class _MyListControllerBase with Store {
  @observable
  List<ItemModel> listItems = [
    ItemModel('Item 1', true),
    ItemModel('Item 2', false),
    ItemModel('Item 3', true),
  ];
  @action
  setListItems(List<ItemModel> value) => listItems = value;
}
