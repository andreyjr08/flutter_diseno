
 /* final String title;
  final String route;
  Home(this.title, this.route);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondo.jpg"), // <-- BACKGROUND IMAGE
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
        appBar: AppBar(
          title: Text('Center'),
          backgroundColor: Colors.white,
          actions: [
            ElevatedButton.icon(
              icon: Icon(
                Icons.confirmation_num,
                color: Colors.blue,
              ),
              label: Text(''),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  //height: 170,
                  enlargeCenterPage: false,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            height: 150,
                          )),
                        ))
                    .toList(),
              ),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    //shadowColor: Colors.black,
                    color: Colors.greenAccent[100],
                    child: SizedBox(
                      width: 350,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            //CirclAvatar
                            SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'GeeksforGeeks',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ), //Text
                            //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: list
            .map((item) => Container(
                  child: Center(child: Text(item.toString())),
                  color: Colors.green,
                ))
            .toList(),
      )),
    );
  }






  import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fondo.jpg"), fit: BoxFit.cover)),
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              //height: 170,
              enlargeCenterPage: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: 150,
                      )),
                    ))
                .toList(),
          ),
          Row(
            children: [
              Card(
                elevation: 10,
                //shadowColor: Colors.black,
                color: Colors.greenAccent[100],
                child: SizedBox(
                  width: 350,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        //CirclAvatar
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          'GeeksforGeeks',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ],
          )
        ],
      ),
    );
  }
}



Card(
                          margin: new EdgeInsets.only(top: 15),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //shadowColor: Colors.black,
                          color: Color.fromRGBO(10, 102, 152, 1),

                          child: SizedBox(
                            width: 350,
                            height: 130,
                          ),
                        ),
                        

*/