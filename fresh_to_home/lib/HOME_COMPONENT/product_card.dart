import 'package:flutter/material.dart';

//======================================== PRODUCT CARD FOR HORIZONTAL LISTVIEW ============================================\\

class ProductCard extends StatelessWidget {
  final String imageUrl;

  const ProductCard({Key? key, required this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.width / 3,
                width: MediaQuery.of(context).size.width / 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "₹199 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: " ₹249 Save 20%",
                          style: TextStyle(fontSize: 12, color: Colors.grey))
                    ])),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Text("500g")),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Text("Yellow Fin Tuna/ Kera"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//================================================TODAY PRODUCT CARD =================================\\

class TodaySprcialCard extends StatelessWidget {
  final String imageUrl, imageUrl2;

  const TodaySprcialCard(
      {Key? key, required this.imageUrl, required this.imageUrl2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "₹199 ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: " ₹249 Save 20%",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ])),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          child: Text("500g")),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Text("Yellow Fin Tuna/ Kera"),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          //======================================  Second Column ===================================================\\

          Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    imageUrl2,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "₹199 ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: " ₹249 Save 20%",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ])),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          child: Text("500g")),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Text("Yellow Fin Tuna/ Kera"),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//================================================ LISTVIEW BANNER CARD =================================\\

class BannerCard extends StatelessWidget {
  final String imageUrl;

  const BannerCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
      padding: EdgeInsets.all(10),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill),
      ),
    ),
    );
  }
}
