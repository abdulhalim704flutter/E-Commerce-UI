import 'package:e_commerece/ui/Screens/product_list_screen.dart';
import 'package:e_commerece/widgets/home/home_banner_slidder.dart';
import 'package:e_commerece/widgets/product_details/product_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/home/categorys_items_widgets.dart';
import '../../widgets/home/section_header.dart';
import '../../widgets/product_item_preview_card.dart';
import 'package:get/get.dart';

import '../getx/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    homeController.getProductSliderList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SvgPicture.asset("assets/images/logo_nav.svg"),
        actions: [
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 16,
              child: Icon(
                Icons.person,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 16,
              child: Icon(
                Icons.call,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 16,
              child: Icon(
                Icons.notifications,
                size: 18,
                color: Colors.grey.shade700,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    hintText: 'search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                    ))),
              ),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<HomeController>(
                builder: (homeController) {
                  if(homeController.getProductSliderInProgress){
                    return CircularProgressIndicator();
                  }else {
                    return HomeBannerSlidder(
                      productSliderModel: homeController.productSliderModel,
                    );
                  }
                }
              ),
              SectionHeader(
                HeaderName: "Categorise",
                onTapSeeAll: () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItemsWidgets(
                      onTap: () {},
                      icon: Icons.computer,
                      categoryName: 'Electronics',
                    ),
                    CategoryItemsWidgets(
                      onTap: () {},
                      icon: Icons.fastfood,
                      categoryName: 'Fast Food',
                    ),
                    CategoryItemsWidgets(
                      onTap: () {},
                      icon: Icons.contacts,
                      categoryName: 'Contacts',
                    ),
                    CategoryItemsWidgets(
                      onTap: () {},
                      icon: Icons.mobile_friendly_sharp,
                      categoryName: 'Mobile',
                    ),
                    CategoryItemsWidgets(
                      onTap: () {},
                      icon: Icons.computer,
                      categoryName: 'Electronics',
                    ),
                    CategoryItemsWidgets(
                      onTap: () {},
                      icon: Icons.computer,
                      categoryName: 'Electronics',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              SectionHeader(HeaderName: 'Popular', onTapSeeAll: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductListScreen()));
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              SectionHeader(HeaderName: 'Scpecial', onTapSeeAll: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListScreen()));
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              SectionHeader(HeaderName: 'New', onTapSeeAll: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListScreen()));
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


