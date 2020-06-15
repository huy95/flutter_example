import 'package:flutter/material.dart';
 

class test1 extends StatelessWidget {
  String imageView, nameButton;
  test1({this.imageView, this.nameButton});

  @override
  Widget build(BuildContext context) {
    var testImage = "images/"+this.imageView+".png";
    return Container(
               height: 250,
               width: 150,
              //  margin: EdgeInsets.only(top:MediaQuery.of(context).size.width/5,right: 0, left: 0),
              //  color: Colors.green,
              child: Stack(
              children:<Widget>[
                Container(
                  margin: EdgeInsets.only(top:200),
                  width: 150,
                  height: 50,
                 child: Material(
                   elevation: 10,
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

class ListViewunder1 extends StatelessWidget {
  Color butonimage, buttonback;
  String textup, textdown;
  ListViewunder1({this.butonimage, this.buttonback, this.textdown, this.textup});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
    
          SizedBox(
              height: 45,
              width:45,
            child: Material(
              elevation: 10,
              color: buttonback, 
              borderRadius: BorderRadius.circular(10),
              child: Icon(
                Icons.arrow_right,color: this.butonimage,
                )
              ,)        
              // decoration(child: Icon(Icons.arrow_right,color: this.butonimage,)),
            ),
          SizedBox(width: 30),
          Container(
            child:Column(children: <Widget>[
              Text(this.textup, style: TextStyle(color: Colors.black, fontSize: 20)),
              Text(this.textdown, style: TextStyle(color: Colors.black26,fontSize: 18),)
          ],)),
        ]
      ),
    );
  }
}