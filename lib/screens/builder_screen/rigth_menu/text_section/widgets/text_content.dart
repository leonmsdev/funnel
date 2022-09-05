import 'package:flutter/material.dart';
import 'package:funnel/providers/item_provider.dart';
import 'package:funnel/styles/colors.dart';
import 'package:funnel/widgets/custom_text.dart';

// ignore: must_be_immutable
class TextContent extends StatefulWidget {
  TextContent({Key? key, required this.chanageState}) : super(key: key);

  final ItemProvider chanageState;
  String inputText = 'Text';
  @override
  State<TextContent> createState() => _TextContentState();
}

class _TextContentState extends State<TextContent> {
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.chanageState.isActive == false ? .2 : 1,
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: 90,
              child: CustomText(
                text: 'Content',
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 25,
                child: TextFormField(
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor:
                          Theme.of(context).brightness == Brightness.light
                              ? builderBackground
                              : darkFieldBgGrey,
                      hintText: widget.chanageState.content,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).brightness == Brightness.light
                            ? darkFieldBgGrey
                            : Colors.white,
                      )),
                  controller: contentController,
                  onChanged: (value) {
                    setState(() {
                      widget.chanageState.changeContent(value);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
