import 'package:flutter/material.dart';
import 'package:flutter_app_test/DetailsPage.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView (
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      // Navigate back to first route when tapped.
                      Navigator.pop(context);
                    }
                ),
                Container(
                  width: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: (){}
                      ),
                      IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: (){}
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: <Widget>[
                Text(
                  'Flutter',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Sample',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: MediaQuery.of(context).size.height - 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.only(left: 25, right: 25),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45,bottom: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 350,
                    child: ListView(
                      children: <Widget>[
                        buildFoodItem(context,'images/food1.jpg', 'Food 1', '\$10', 0),
                        buildFoodItem(context,'images/food2.jpg', 'Food 2', '\$20', 1),
                        buildFoodItem(context,'images/food1.jpg', 'Food 3', '\$30', 2),
                        buildFoodItem(context,'images/food2.jpg', 'Food 4', '\$40', 3),
                        buildFoodItem(context,'images/food1.jpg', 'Food 5', '\$50', 4),
                        buildFoodItem(context,'images/food2.jpg', 'Food 6', '\$50', 5),
                        buildFoodItem(context,'images/food1.jpg', 'Food 7', '\$50', 6),
                        buildFoodItem(context,'images/food2.jpg', 'Food 8', '\$50', 7),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
//                  color: Colors.red,
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Icon(Icons.search,color: Colors.black,),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Icon(Icons.add_shopping_cart,color: Colors.black,),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.indigo,
                        ),
                        child: Center(
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }

  Widget buildFoodItem(BuildContext context, String imgPath, String foodName, String price, int tag) {
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DetailsPage(tag: tag,name: foodName, price: price)),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: tag,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(75/2),
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 75,
                        width: 75,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

}

