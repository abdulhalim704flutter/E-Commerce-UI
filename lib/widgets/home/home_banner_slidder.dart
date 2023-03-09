import 'package:e_commerece/data/models/product_slider_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../ui/utils/app-colors.dart';

class HomeBannerSlidder extends StatelessWidget {
  HomeBannerSlidder({Key? key, required this.productSliderModel}) : super(key: key);
  ValueNotifier<int> _currentSelectedindex = ValueNotifier(0);
  final CarouselController _carouselControler = CarouselController();
  final ProductSliderModel productSliderModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _carouselControler,
          options: CarouselOptions(
              height: 180,
              reverse: true,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                _currentSelectedindex.value = index;
              }),
          items: productSliderModel.data?.map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.PrimariyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(slider.image??  '')
                    )),
                    alignment: Alignment.center,
                );
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
                          for (int i = 0; i < (productSliderModel.data?.length?? 0); i++)
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
