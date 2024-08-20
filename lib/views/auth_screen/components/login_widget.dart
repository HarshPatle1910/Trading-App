import 'package:flutter/material.dart';

import '../../../consts/lists.dart';

Widget buildDropdownButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildDropdownButton(featuresList, featuresList.first, (value) {}),
      buildDropdownButton(optionList, optionList.first, (value) {}),
      buildDropdownButton(strategyList, strategyList.first, (value) {}),
      buildDropdownButton(aboutList, aboutList.first, (value) {}),
    ],
  );
}

DropdownButton<String> buildDropdownButton(
  List<String> list,
  String value,
  Function(String?) onChanged,
) {
  return DropdownButton<String>(
    dropdownColor: Colors.black,
    value: value,
    icon: const Icon(Icons.arrow_drop_down),
    elevation: 16,
    style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
    underline: Container(
      height: 2,
    ),
    onChanged: onChanged,
    items: list.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
}
