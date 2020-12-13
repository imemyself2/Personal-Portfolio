import 'package:flutter/material.dart';

void main() {
  runApp(HomePageStateless());
}

class HomePageStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(
          children: [
            ListView(
              children: [
                // Home screen
                Container(
                  height: screenHeight,
                  width: screenWidth,
                  color: Colors.black,
                  // Terminal View
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      width: screenWidth/2.2,
                      height: screenHeight/2.2,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                  color: Colors.grey[900],
                                ),
                                width: screenWidth/2.2,
                                height: screenHeight/30,
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 15)),
                                    Text("dkaneria@shell", style: TextStyle(color: Colors.white54),),
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(left: 15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Colors.transparent
                                      ),
                                      alignment: Alignment.topRight,
                                      width: 17,
                                      height: 17,
                                      child: Center(
                                        child: FlatButton(
                                          padding: EdgeInsets.only(bottom: -20),
                                          onPressed: (){}, 
                                          child: Center(child: Icon(Icons.minimize, size: 20, color: Colors.white54,))
                                          ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Colors.transparent
                                      ),
                                      alignment: Alignment.topRight,
                                      width: 17,
                                      height: 17,
                                      child: Center(
                                        child: FlatButton(
                                          padding: EdgeInsets.only(bottom: -20),
                                          onPressed: (){}, 
                                          child: Center(child: Icon(Icons.crop_square_sharp, size: 17, color: Colors.white54,))
                                          ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Colors.transparent
                                      ),
                                      alignment: Alignment.topRight,
                                      width: 17,
                                      height: 17,
                                      child: Center(
                                        child: FlatButton(
                                          padding: EdgeInsets.only(bottom: -20),
                                          onPressed: (){}, 
                                          child: Center(child: Icon(Icons.close, size: 20, color: Colors.redAccent,))
                                          ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 15))
                                  ],
                                ),
                              ),
                              // Terminal typing space
                              Container(
                                height: screenHeight/2.5,
                                width: screenWidth/2.21,
                                child: ListView(
                                  children: [
                                    Container(
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.pink,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.pink,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.pink,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.pink,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.pink,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.pink,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.orange,
                                    ),
                                    Container(
                                      height: 30,
                                      color: Colors.pink,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight,
                  width: screenWidth,
                  color: Colors.black,
                ),
                Container(
                  height: screenHeight,
                  width: screenWidth,
                  color: Colors.black,
                ),
              ],
            ),
          Positioned(
            top: 0,
            left: screenWidth/2.5,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                height: screenHeight/22,
                width: screenWidth/5,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(
                      color: Color(0xBBbce215),
                      width: 1
                    ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlatButton(
                        onPressed: (){}, 
                        child: Text("Home", style: TextStyle(color: Colors.white, fontSize: 18),)
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                      FlatButton(
                        onPressed: (){}, 
                        child: Text("Projects", style: TextStyle(color: Colors.white, fontSize: 18),)
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                      FlatButton(
                        onPressed: (){}, 
                        child: Text("About", style: TextStyle(color: Colors.white, fontSize: 18),)
                      )
                    ],
                  ),
                ),
            ),
          ),],
        ),
      ),
    );
  }
}
