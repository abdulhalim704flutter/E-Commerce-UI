import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../ui/utils/app-colors.dart';

class ProductImageSlider extends StatelessWidget {
  ProductImageSlider({Key? key}) : super(key: key);
  ValueNotifier<int> _currentSelectedindex = ValueNotifier(0);
  final CarouselController _carouselControler = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _carouselControler,
          options: CarouselOptions(
              height: 230,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                _currentSelectedindex.value = index;
              }),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/shoe1.png'),
                        fit: BoxFit.cover,
                      ),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8)),
                    alignment: Alignment.center,
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ValueListenableBuilder(
                    valueListenable: _currentSelectedindex,
                    builder: (context, updatevalue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Container(
                              margin: EdgeInsets.all(3),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: i == _currentSelectedindex.value
                                    ? AppColors.PrimariyColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: i == _currentSelectedindex.value
                                        ? AppColors.PrimariyColor
                                        : Colors.white),
                              ),
                            )
                        ],
                      );
                    }),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
