import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ink_page_indicator/ink_page_indicator.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

List<Widget> _createChildren(int count) {
  final List<Widget> result = [];
  for (var i = 0; i < count; i++) {
    result.add(const SizedBox.expand());
  }
  return result;
}

class PruebaResponsive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageResponsiveTest();
  }
}

class _PageResponsiveTest extends State<PruebaResponsive> {
  String reason = '';
  int _current = 0;
  final CarouselControllerImpl _controller = CarouselControllerImpl();
  final CarouselController _controller2 = CarouselController();
  final ValueNotifier<double> page = ValueNotifier(0.0);

  IndicatorShape shape = IndicatorShape(width: 0, height: 0);
  IndicatorShape activeShape = IndicatorShape(height: 0, width: 0);

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    final children = _createChildren(5);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Image.asset("assets/listo.png", fit: BoxFit.contain, height: 65),
        centerTitle: true,
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
      body: Container(
          //margin: new EdgeInsets.only(top: 10),
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(234, 234, 234, 1),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                      color: Color(0x0000000),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                  margin:
                                      new EdgeInsets.only(top: 5, bottom: 5),
                                  color: Colors.black,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        color: Color.fromRGBO(10, 102, 152, 1),
                                        child: CarouselSlider(
                                          options: CarouselOptions(
                                            autoPlay: true,
                                            aspectRatio: 1,
                                            enlargeCenterPage: true,
                                          ),
                                          items: imageSliders,
                                        ),
                                      ))
                                    ],
                                  ))),
                          Expanded(
                            flex: 4,
                            child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(-0.9, 0),
                                        child: Text(
                                          'Correo electronico o numero de celular',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromRGBO(10, 102, 152, 1),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 9.0,
                                                          horizontal: 5),
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromRGBO(
                                                        181, 175, 175, 1),
                                                    blurRadius: 15,
                                                    spreadRadius: -9,
                                                    offset: const Offset(0, -5),
                                                  ),
                                                ],
                                              ))),
                                      Align(
                                        alignment: Alignment(-0.9, 0),
                                        child: Text(
                                          'Contraseña',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromRGBO(10, 102, 152, 1),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 9.0,
                                                          horizontal: 5),
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromRGBO(
                                                        181, 175, 175, 1),
                                                    blurRadius: 15,
                                                    spreadRadius: -9,
                                                    offset: const Offset(0, -5),
                                                  ),
                                                ],
                                              ))),
                                      Expanded(
                                        flex: 3,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Iniciar sesion'),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Color.fromRGBO(
                                                            10, 102, 152, 1)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                )),
                                                padding: MaterialStateProperty
                                                    .all<EdgeInsets>(
                                                        EdgeInsets.symmetric(
                                                            horizontal: 110)))),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          Expanded(
                              flex: 5,
                              child: Container(
                                  margin: new EdgeInsets.only(bottom: 5),
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(-0.9, 1.9),
                                        child: Text(
                                          'Mercado Pacific',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromRGBO(10, 102, 152, 1),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: ElevatedButton.icon(
                                                      icon: Icon(
                                                        Icons
                                                            .arrow_back_ios_outlined,
                                                        color: Colors.blue,
                                                      ),
                                                      label: Text(''),
                                                      onPressed: () =>
                                                          _controller2
                                                              .previousPage(),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        elevation: 0,
                                                        primary: Colors.white,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 0,
                                                                vertical: 0),
                                                      ),
                                                    )),
                                                Expanded(
                                                  flex: 8,
                                                  child: CarouselSlider(
                                                    items: imageSliders,
                                                    options: CarouselOptions(
                                                      aspectRatio: 3,
                                                      viewportFraction: 0.5,
                                                      enlargeCenterPage: true,
                                                    ),
                                                    carouselController:
                                                        _controller2,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: ElevatedButton.icon(
                                                    icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      color: Colors.blue,
                                                    ),
                                                    label: Text(''),
                                                    onPressed: () =>
                                                        _controller2.nextPage(),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      elevation: 0,
                                                      primary: Colors.white,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 0,
                                                              vertical: 0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          flex: 6,
                                          child: Card(
                                              color: Color.fromRGBO(
                                                  10, 102, 152, 1),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      margin:
                                                          new EdgeInsets.only(
                                                              bottom: 2),
                                                      alignment:
                                                          Alignment(-0.9, 1),
                                                      height: 15,
                                                      child: Text(
                                                        'Desatacados',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 8,
                                                      child: CarouselSlider(
                                                        items: imageSliders,
                                                        carouselController:
                                                            _controller,
                                                        options:
                                                            CarouselOptions(
                                                                autoPlay: false,
                                                                enlargeCenterPage:
                                                                    false,
                                                                aspectRatio: 3,
                                                                viewportFraction:
                                                                    1,
                                                                onPageChanged:
                                                                    (index,
                                                                        reason) {
                                                                  setState(() {
                                                                    _current =
                                                                        index;
                                                                  });
                                                                }),
                                                      )),
                                                  Expanded(
                                                      flex: 2,
                                                      child: Container())
                                                ],
                                              ))),
                                    ],
                                  ))),
                        ],
                      ))),
            ],
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ElevatedButton.icon(
                icon: SvgPicture.asset(
                  "assets/icon-facebook.svg",
                  height: 35.0,
                  width: 35.0,
                  allowDrawingOutsideViewBox: true,
                ),
                label: Text(''),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color(0x000000),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ElevatedButton.icon(
                icon: SvgPicture.asset(
                  "assets/icon-twiter.svg",
                  height: 35.0,
                  width: 35.0,
                  allowDrawingOutsideViewBox: true,
                ),
                label: Text(''),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color(0x000000),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ElevatedButton.icon(
                icon: SvgPicture.asset(
                  "assets/icon-instagram.svg",
                  height: 35.0,
                  width: 35.0,
                  allowDrawingOutsideViewBox: true,
                ),
                label: Text(''),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color(0x000000),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            )
          ],
        ),
        color: Color.fromRGBO(10, 102, 152, 1),
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              // margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
}
/*
class TapboxA extends StatefulWidget {
  TapboxA({Key? key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
*/
