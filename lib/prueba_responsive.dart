import 'package:flutter/material.dart';

class PruebaResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title:
              Image.asset("assets/listo.png", fit: BoxFit.contain, height: 65),
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
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/fondo.jpg"), fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: new Container(
                    margin: new EdgeInsets.only(bottom: 10, top: 10),
                    color: Colors.red,
                  ),
                ),
                new Expanded(
                  flex: 4,
                  child: new Container(
                    margin: new EdgeInsets.only(bottom: 10, top: 10),
                    //use your Gridview instead
                    color: Colors.green,
                  ),
                ),
                new Expanded(
                  flex: 4,
                  child: new Container(
                    margin: new EdgeInsets.only(bottom: 10),
                    //use your Gridview instead
                    color: Colors.white,
                  ),
                ),
              ],
            )
            
            ),
             bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.category, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.category, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.category,
                color: Colors.white,
              ),
            )
          ],
        ),
        color: Color.fromRGBO(10, 102, 152, 1),
      ),
            
            );
  }
}
