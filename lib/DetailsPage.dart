import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {

  final tag;
  final name;
  final price;

  DetailsPage({this.tag,this.name,this.price});

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: (){
              Navigator.pop(context);
            }
        ),
        title: Text(
          'Details',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: (
          Icon(Icons.more_horiz)
          ),
            onPressed: (){},
            color: Colors.white,
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 80,
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
              ),
              Positioned(
                top: 120,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    )
                  ),
                  height: MediaQuery.of(context).size.height -120,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 30,
                left: (MediaQuery.of(context).size.width/2)-100,
                child: Hero(
                  tag: widget.tag,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200/2),
                      image: DecorationImage(
                          image: AssetImage('images/food1.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                top: 250,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: <Widget>[
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Selected',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: <Widget>[
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Testing',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}