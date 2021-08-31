import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:fresh_to_home/HOME_COMPONENT/product_card.dart';
import 'package:fresh_to_home/products.dart';

//========================================SLIDER SECTION ============================================\\

class SliderSection extends StatefulWidget {
  @override
  _SliderSectionState createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  final sliderItem = [
    "https://pbs.twimg.com/media/EYhPPggUEAAb8MD.jpg",
    "https://startagist.com/wp-content/uploads/2017/01/FreshToHome.jpg",
    "https://i.pinimg.com/originals/90/42/c7/9042c750886bfbe655e1b47f5b2a0364.png",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliderItem.length,
      itemBuilder: (context, itemIndex, realIndex) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              image: NetworkImage(sliderItem[itemIndex]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        height: 160,
        viewportFraction: 1,
        autoPlayAnimationDuration: Duration(seconds: 3),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}

//======================================== MESSAGE BOX SECTION ============================================\\

class MessageBoxSection extends StatelessWidget {
  final String mesage =
      "Due to the nature of how COVID-19 is spread, the biggest risk of infection could come from interacting closely with others.";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 5,
      ),
      child: DottedBorder(
        color: Colors.red,
        strokeWidth: 1,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            mesage,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

//======================================== TOP PRODUCT SECTION ============================================\\

class TopProduct extends StatefulWidget {
  const TopProduct({Key? key}) : super(key: key);

  @override
  _TopProductState createState() => _TopProductState();
}

class _TopProductState extends State<TopProduct> {
  List productImage = [image1, image2, image3, image4];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            "Top Product",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productImage.length,
              itemBuilder: (context, index) =>
                  ProductCard(imageUrl: productImage[index])),
        )
      ],
    );
  }
}

//======================================== TODAY SPECIAL SECTION ============================================\\

class TodaySpecial extends StatefulWidget {
  @override
  _TodaySpecialState createState() => _TodaySpecialState();
}

class _TodaySpecialState extends State<TodaySpecial> {
  List productImage = [image5, image6, image7, image8];

  List productImage1 = [image9, image10, image11, image12];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            "Today Special",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productImage.length,
              itemBuilder: (context, index) => TodaySprcialCard(
                    imageUrl: productImage[index],
                    imageUrl2: productImage1[index],
                  )),
        ),
      ],
    );
  }
}

//======================================== BANNER LISTVIEW SECTION ============================================\\

class BannerListviewSection extends StatefulWidget {
  @override
  _BannerListviewSectionState createState() => _BannerListviewSectionState();
}

class _BannerListviewSectionState extends State<BannerListviewSection> {
  List bannerImage = [image13, image15, image16];

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 510,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: bannerImage.length,
          itemBuilder: (context, index) => BannerCard(
            imageUrl: bannerImage[index],
        ),
      ),
    );
  }
}