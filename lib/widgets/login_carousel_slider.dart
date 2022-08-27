import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> itemName = ['Booking', 'Payment', 'Funnel'];
final List<String> itemDescription = [
  'Description if the Booking Function',
  'Description if the Payment Function',
  'Description if the Funnel Function',
];

class LoginCarouselSlider extends StatefulWidget {
  const LoginCarouselSlider({Key? key}) : super(key: key);

  @override
  State<LoginCarouselSlider> createState() => _LoginCarouselSliderState();
}

class _LoginCarouselSliderState extends State<LoginCarouselSlider> {
  int current = 0;
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: itemName.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    height: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        const IconCircle(),
                        Text(i),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
            carouselController: controller,
            options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: itemName.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => controller.animateToPage(entry.key),
                child: Container(
                  width: 9,
                  height: 9,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                          .withOpacity(current == entry.key ? .9 : .3)),
                ),
              );
            }).toList(),
          ),
        ]);
  }
}

class IconCircle extends StatelessWidget {
  final String icon;

  const IconCircle({Key? key, this.icon = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 80,
      child: Text(
        icon,
        style: const TextStyle(fontSize: 60),
      ),
    );
  }
}
