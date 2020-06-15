import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('stackbar'),
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              test1(imageView: "test2",nameButton: "Guitar",),
              SizedBox(width: 40),
              test1(imageView: "test3",nameButton: "Violin",),
              SizedBox(width: 40),
              test1(imageView: "test4",nameButton: "Saxophone",),
            ]
          ),
        )
      ),
    );
  }
}
class test1 extends StatelessWidget {
  String imageView, nameButton;
  test1({this.imageView, this.nameButton});

  @override
  Widget build(BuildContext context) {
    var testImage = "images/"+this.imageView+".png";
    return Container(
               height: 250,
               width: 150,
              //  color: Colors.green,
              child: Stack(
              children:<Widget>[
                Container(
                  margin: EdgeInsets.only(top:200),
                  width: 150,
                  height: 50,
                 child: Material(
                   elevation: 20,
                   borderRadius: BorderRadius.circular(20),// bo khi giao dien
                   color: Colors.white,
                   child: InkWell(
                     splashColor: Colors.amber,
                     borderRadius: BorderRadius.circular(20),// bo khi nhan vao
                      onTap: (){},
                      child: Center(
                         child: Text(this.nameButton,
                         style: TextStyle(color: Colors.purple[300]),
                         ),
                       ), 
                   ),
                 ),
                ),
                 Container(
                      height: 206,
                      width: 150,
                      child: Image(image: AssetImage(testImage),),
                    ),
              ] 
              ),
    );
  }
}