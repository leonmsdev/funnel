// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:provider/provider.dart';

class TextWeigthDropDown extends StatefulWidget {
  const TextWeigthDropDown({Key? key}) : super(key: key);

  @override
  State<TextWeigthDropDown> createState() => _TextWeigthDropDownState();
}

class _TextWeigthDropDownState extends State<TextWeigthDropDown> {
  String finalState = 'bold';

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          height: 25,
          width: 129,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.light
                  ? builderBackground
                  : darkFieldBgGrey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: DropdownButtonHideUnderline(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: DropdownButton<String>(
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).brightness == Brightness.light
                          ? darkFieldBgGrey
                          : Colors.white,
                    ),
                    value: finalState,
                    items: [
                      DropdownMenuItem<String>(
                        value: 'bold',
                        child: Text("Bold"),
                      ),
                      DropdownMenuItem<String>(
                        value: 'medium',
                        child: Text("Medium"),
                      ),
                      DropdownMenuItem<String>(
                        value: 'ligth',
                        child: Text("Ligth"),
                      )
                    ],
                    onChanged: (String? value) {
                      finalState = value.toString();
                      if (finalState == 'medium') {
                        provider.textNormal();
                      } else if (finalState == 'ligth') {
                        provider.textLigth();
                      } else {
                        provider.textBold();
                      }
                      setState(() {});
                    }),
              ),
            ),
          ),
        );
      },
    );
  }
}
