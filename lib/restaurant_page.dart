import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudoscreens/items_food.dart';
import 'package:fudoscreens/items_type.dart';
import 'package:fudoscreens/slider_top_restaurants_component.dart';
import 'package:fudoscreens/popular_items_slider_components.dart';
import 'package:accordion/accordion.dart';

class RestaurantPage extends StatelessWidget {
  void moveToBack(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }

  List<ItemsType> _itemType = [
    ItemsType(
      typename: 'Burger',
      arr: {
        FoodItems(
            title: 'Veg Burger',
            description: 'Veg aalo Tikki Burger with extra cheese',
            price: '149'),
        FoodItems(
            title: 'Chicken Burger',
            description: 'Chicken Burger with extra cheese',
            price: '199'),
      }.toList(),
    ),
    ItemsType(
      typename: 'Sandwich',
      arr: {
        FoodItems(
            title: 'Veg Sandwich',
            description: 'Loaded veggies Sandwich',
            price: '99'),
        FoodItems(
            title: 'Chicken Sandwich',
            description: 'Loaded Chicken Sandwich ',
            price: '149'),
      }.toList(),
    ),
  ];
  List<PopularItemsSliderComponents> _itemsDishes = [
    PopularItemsSliderComponents(
      imagepath: 'images/food/burger.png',
      title: 'Burger',
      description: 'Served with Lorem Ipsum',
      price: '500',
    ),
    PopularItemsSliderComponents(
      imagepath: 'images/food/coke.jpg',
      title: 'Coke',
      description: 'Served with Lorem Ipsum',
      price: '75',
    ),
    PopularItemsSliderComponents(
      imagepath: 'images/food/fries.jpg',
      title: 'Fries',
      description: 'Served with Lorem Ipsum',
      price: '50',
    ),
    PopularItemsSliderComponents(
      imagepath: 'images/food/pizza.jpg',
      title: 'Pizza',
      description: 'Served with Lorem Ipsum',
      price: '300',
    ),
    PopularItemsSliderComponents(
      imagepath: 'images/food/sandwich.jpg',
      title: 'Sandwich',
      description: 'Served with Lorem Ipsum',
      price: '100',
    ),
    PopularItemsSliderComponents(
      imagepath: 'images/food/wrap.jpg',
      title: 'Wrap',
      description: 'Served with Lorem Ipsum',
      price: '700',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // TODO: AppBar
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Center(
                child: IconButton(
                  onPressed: () => moveToBack(context),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 27,
                  ),
                  color: Colors.black,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Center(
                  child: Icon(
                    Icons.favorite_border,
                    size: 27,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // Icon(Icons.favorite_border),
            // SizedBox(
            //   width: 25,
            // ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Center(
                  child: Icon(
                    Icons.search,
                    size: 27,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            // Icon(Icons.search),
            // SizedBox(
            //   width: 17,
            // ),
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO: Restaurant Details
                Card(
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      // color: Colors.blue[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(29),
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 27,
                              backgroundImage:
                                  AssetImage('images/logos/mcd.png'),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "MCDonald's",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fast Food - Burger",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'NH2 Delhi Highway | 5 kms',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 3,
                                      horizontal: 10,
                                    ),
                                    child: Text(
                                      '4.4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 10,
                                    ),
                                    child: Text(
                                      'RATINGS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(7),
                                        bottomRight: Radius.circular(7),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // TODO: Popular Items

                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF3E9FB),
                  ),
                  padding: EdgeInsets.only(
                    top: 19,
                    bottom: 19,
                    left: 13,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Popular Items',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Most ordered items from this restaurant',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.black26,
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        height: 210,
                        child: Row(
                          children: [
                            Expanded(
                              child: CarouselSlider(
                                items: _itemsDishes.map((item) {
                                  return Card(
                                    elevation: 10,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 130,
                                          height: 90,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(7),
                                              topRight: Radius.circular(7),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(item.imagepath),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 130,
                                          height: 110,
                                          padding:
                                              EdgeInsets.fromLTRB(10, 4, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    item.title,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    item.description,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  Text(
                                                    item.price,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    width: 62,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .deepPurpleAccent),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(7),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Icon(
                                                          Icons.add,
                                                          size: 17,
                                                          color: Colors
                                                              .deepPurpleAccent,
                                                        ),
                                                        Text(
                                                          'ADD',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .deepPurpleAccent,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(7),
                                              bottomRight: Radius.circular(7),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                // carouselController: _controller,
                                options: CarouselOptions(
                                  // height: 100,
                                  aspectRatio: 1.0,
                                  // enlargeCenterPage: true,
                                  viewportFraction: 0.37,
                                  pageViewKey:
                                      PageStorageKey<String>('carousel_slider'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15,
                  ),
                  child: Text(
                    'All Categories',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _itemType.length,
                  itemBuilder: (context, i) {
                    return new ExpansionTile(
                      title: new Text(
                        _itemType[i].typename,
                        style: new TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          // fontStyle: FontStyle.italic
                        ),
                      ),
                      children: <Widget>[
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: _itemType[i].arr.length,
                          itemBuilder: (ctx, j) {
                            return Container(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _itemType[i].arr[j].title,
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        _itemType[i].arr[j].description,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    _itemType[i].arr[j].price,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
                // TODO: Reviews
              ],
            ),
          ),
        ),
      ),
    );
  }
}
