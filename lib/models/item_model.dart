import 'package:mobx/mobx.dart';
part 'item_model.g.dart';

class ItemModel = _ItemModelBase with _$ItemModel;

abstract class _ItemModelBase with Store {
  _ItemModelBase(this.title, this.check);

  @observable
  String title;
  @observable
  bool check;

  @action
  setTitle(String newtitle) {
    this.title = newtitle;
  }

  @action
  setCheck(bool newValue) {
    this.check = newValue;
  }
}
