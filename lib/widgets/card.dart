// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:funnel/widgets/custom_text.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HeadingCard extends StatelessWidget {
  String heading;
  String sideHeading;

  HeadingCard({
    Key? key,
    required this.heading,
    required this.sideHeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, provider, child) {
      return InkWell(
        onTap: () {},
        child: Container(
          width: 180,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.white
                : Colors.black,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              width: .5,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.withOpacity(.4)
                  : Colors.black,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.03),
                blurRadius: 25,
                spreadRadius: 1,
                offset: Offset(
                  0,
                  2,
                ),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 130.0,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage(
                          Theme.of(context).brightness == Brightness.light
                              ? "lib/styles/images/illustration.jpg"
                              : "lib/styles/images/dark_illustration.jpg"),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(height: 10),
              CustomText(
                text: heading.toString(),
                size: 24,
                weight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              CustomText(
                text: sideHeading.toString(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      );
    });
  }
}
