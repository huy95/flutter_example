import 'package:flutter/material.dart';
import 'package:music_tutol/scrollView.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: topTrain()
          
          )
      ),
    );
  }
}
class topTrain extends StatelessWidget {
  const topTrain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
              children: <Widget>[
                  containerTop(),
                  Container(
                    margin: EdgeInsets.only(top: 20,right:20,left:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("""Find the best 
music tutorial""",
                         maxLines: 2,
                         style: TextStyle(color: Colors.white,
                        fontSize: 30, fontWeight: FontWeight.w600
                        )),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDI8ILU-LfBe5i4jgF0lW4-iDeCE7fpX1B3lzqqmhiBnUHCV3U&usqp=CAU"))
                          ),
                        ),
                      ]
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.only(top: 110),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                     test1(imageView: "test2",nameButton: "Guitar",),
                      SizedBox(width: 40),
                    test1(imageView: "test3",nameButton: "Violin",),
                      SizedBox(width: 40),
                     test1(imageView: "test4",nameButton: "Saxophone",),
                    ],
                  ),
                  imageUnder(),
                  textField(),
                  underState()
 
              ],
            ),
          
    );
  }
}
class containerTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.only(top:0, left:0, right:0, bottom: MediaQuery.of(context).size.height * 2/3 -100 ),
         decoration: BoxDecoration(
            //  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              image: new DecorationImage(
              fit: BoxFit.fill,
              // image: new NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDI8ILU-LfBe5i4jgF0lW4-iDeCE7fpX1B3lzqqmhiBnUHCV3U&usqp=CAU")
              image: AssetImage("images/background.jpg"),

             ),
         )
      ); 
  }
}
class imageUnder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.only(top:370, left:10, right:10,),
         height: 50,
         decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10),
              image: new DecorationImage(
              fit: BoxFit.fill,
              // image: new NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDI8ILU-LfBe5i4jgF0lW4-iDeCE7fpX1B3lzqqmhiBnUHCV3U&usqp=CAU")),
              image: AssetImage("images/test5.jpg"),
             ),
         )
      ); 
  }
}

class textField extends StatelessWidget {
  const textField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:430, left:30, right:30,),
      child: Column(
        children: <Widget>[
          TextField(
          decoration: InputDecoration(
            labelText: "Seach",
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
          style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 10),
          Text("Popular tutorial",style: TextStyle(fontSize:30, fontWeight: FontWeight.w600),),
        ],
      )
    );
  }
}

class underState extends StatelessWidget {
  const underState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 520, left: 50),
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[ 
                      SizedBox(height:20),
                      ListViewunder1(butonimage: Colors.white, buttonback: Colors.red,
                       textdown: "Basic tutorial of Guitar", 
                       textup: "   Marty Schwartz Guitar"),
                       ListViewunder1(butonimage: Colors.red, buttonback: Colors.white,
                       textdown: "Notes on Violin(First", 
                       textup:  "   Measure By Measure"),
                       ListViewunder1(butonimage: Colors.white, buttonback: Colors.red,
                       textdown: "Guitar Lesson - How To", 
                       textup: "   Marty Schwartz Guitar"),
                        SizedBox(height:20),

                      ListViewunder1(butonimage: Colors.white, buttonback: Colors.red,
                       textdown: "Basic tutorial of Guitar", 
                       textup: "   Marty Schwartz Guitar"),
                       ListViewunder1(butonimage: Colors.red, buttonback: Colors.white,
                       textdown: "Notes on Violin(First", 
                       textup:  "   Measure By Measure"),
                       ListViewunder1(butonimage: Colors.white, buttonback: Colors.red,
                       textdown: "Guitar Lesson - How To", 
                       textup: "   Marty Schwartz Guitar"),
            ]
          ),
        ), 
                  
                  
    );
  }
}