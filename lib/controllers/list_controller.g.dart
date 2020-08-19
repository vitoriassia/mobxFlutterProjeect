// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyListController on _MyListControllerBase, Store {
  final _$listItemsAtom = Atom(name: '_MyListControllerBase.listItems');

  @override
  List<ItemModel> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(List<ItemModel> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  final _$_MyListControllerBaseActionController =
      ActionController(name: '_MyListControllerBase');

  @override
  dynamic setListItems(List<ItemModel> value) {
    final _$actionInfo = _$_MyListControllerBaseActionController.startAction(
        name: '_MyListControllerBase.setListItems');
    try {
      return super.setListItems(value);
    } finally {
      _$_MyListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems}
    ''';
  }
}
