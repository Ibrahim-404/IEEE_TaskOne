import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ieee_first_task/screen/Home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Product extends StatefulWidget {
  const Product({Key? key});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  void handleColorChange(String? value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          color: Color(0xFFF1F2F6),
          child: Column(children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 370.0,
                enlargeCenterPage: true,
                // autoPlay: true,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  // Handle page change
                },
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return BuildproductImage();
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 18,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "\$115.00",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Minimal chair",
                        style: TextStyle(
                            color: Color(0xFF27283A),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 2,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height:8),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text("Color options",style: TextStyle(
                    color: Color(0xFF27283A),
                    fontSize:15,
                    fontWeight: FontWeight.w700
                  )),
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(left: 30),
                        height: 20,
                        width: 20,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color:Color(0xFFFF656E),
                       ),
                      ),
                        onTap:(){

                        }
                    ),
                    SizedBox(width: 2,),
                    GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(left: 30),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color:Color(0xFFFF656E),
                          ),
                        ),
                        onTap:(){

                        }
                    ),
                    SizedBox(width: 8,),
                    GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(left: 30),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color:Color(0xFFFF656E),
                          ),
                        ),
                        onTap:(){

                        }
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.only(left:30),
                  alignment: Alignment.topLeft,
                  child: Text("Descraption",
                  style: TextStyle(
                    color: Color(0xFF27283A),
                  fontSize: 20,
                    fontWeight:FontWeight.w700
                  ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.only(left:30),
                  alignment: Alignment.topLeft,
                  child: Text(
                      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\ncccccccccccccccccccc\nvvvvvvvvvvvvvvvvvvvv\nvvvvvvvvvvvv\n",
                    style: TextStyle(
                        color: Color(0xFF27283A),
                        fontSize: 15,
                        fontWeight:FontWeight.w600
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [

                    Container(

                      height:84 ,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(25)),
                        color: Color(0xFF27283A),
                      ),
                    child:Row(
                      children: [
                      TextButton.icon(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,), label: Text("Add to card",style:TextStyle(
                        color: Colors.white,
                     fontSize: 15,
                      ),))
                      ],
                    ),
                    )
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class BuildproductImage extends StatefulWidget {
  const BuildproductImage({super.key});

  @override
  State<BuildproductImage> createState() => _BuildproductImageState();
}

class _BuildproductImageState extends State<BuildproductImage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
            image: DecorationImage(
              image: AssetImage(
                  "assets/photos/pexels-max-rahubovskiy-6580227.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
                icon: Icon(Icons.arrow_back),
              ),
              Text(
                "Product",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF27283A),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_outlined,
                    color: Color(0xFF27283A)),
              ),
            ],
          ),
        ),
        Positioned(
          top: 310,
          left: 250,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: IconButton(
                icon:  Icon(
    isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
    color: isFavorite ? Colors.red : Colors.red,
    ),
    onPressed: () {
    setState(() {
    isFavorite = !isFavorite;
    });

                }),
          ),
        ),
      ],
    );
  }
}

/*
       CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: IconButton(
                        icon: Icon(
                          Icons.heart_broken_outlined,
                          color: Colors.red,
                        ),
                        onPressed: () {}),
                  ),
*/

/*
      CarouselSlider(
                    options: CarouselOptions(
                      height: 370.0,
                      enlargeCenterPage: true,
                      // autoPlay: true,
                      aspectRatio: 16 / 9,
                      onPageChanged: (index, reason) {
                        // Handle page change
                      },
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return BuildproductImage();
                        },
                      );
                    }).toList(),
                  ),
      */
