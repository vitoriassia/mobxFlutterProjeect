import 'package:flutter/material.dart';

textField({String labelText, onChanged, String errorText}) {
  return TextField(
      onChanged: onChanged,
      autocorrect: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText));
}
