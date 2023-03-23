import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';

class HomeBannerSection extends StatefulWidget {
  
  const HomeBannerSection({Key? key}) : super(key: key);

  @override
  State<HomeBannerSection> createState() => _HomeBannerSectionState();
}

class _HomeBannerSectionState extends State<HomeBannerSection> {
  
  late int selectedBanner = 0;
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 4,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            pageSnapping: true,
            viewportFraction: 1,
            aspectRatio: 2.5,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            reverse: false,
            onPageChanged: (index, reason) {
              setState(() {
                selectedBanner = index;
              });
            }
          ),
          itemBuilder: (context, itemIndex, pageViewIndex){
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: Dimensions.space3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2),
                  image: const DecorationImage(
                      image: AssetImage(AppImages.bannerImage),
                      fit: BoxFit.fill
                  )
              ),
            );
          },
        ),
        const SizedBox(height: Dimensions.space15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(4, selectedBanner)
        )
      ],
    );
  }

  List<Widget> indicators(page, currentIndex) {
    return List<Widget>.generate(4, (index) {
      return Container(
        margin: const EdgeInsets.all(Dimensions.space3),
        width: currentIndex == index ? 30 : 10,
        height: 5,
        decoration: BoxDecoration(
          color: currentIndex == index ? AppColors.secondaryColor900 : AppColors.secondaryColor400,
          borderRadius: BorderRadius.circular(Dimensions.defaultRadius)
        ),
      );
    });
  }
}
