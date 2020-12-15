import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
  var comms = [];
  var comm_result = [];
  var name = ['D', 'A', 'R', 'S', 'H', 'I', 'L'];
  PageController _sc = new PageController();
  TextEditingController prompt = new TextEditingController();
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.vertical,
              controller: _sc,
              children: [
                // Home screen
                Container(
                  height: screenHeight,
                  width: screenWidth,
                  color: Colors.black,
                  // Terminal View
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        height: screenHeight/2,
                        width: screenWidth/2,
                        child: Center(
                          child: TypewriterAnimatedTextKit(
                            isRepeatingAnimation: false,
                            text: [
                              'DARSHIL KANERIA'
                            ],
                            textStyle: TextStyle(
                              fontSize: screenWidth/26,
                              color: Colors.white
                            ),
                            speed: Duration(milliseconds: 100),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Terminal(context, _sc),
                    ],
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

class Terminal extends StatefulWidget {
  @override
  _TerminalState createState() => _TerminalState();
  BuildContext prevContext;
  PageController _pg;
  Terminal(this.prevContext, this._pg);
  
}

class _TerminalState extends State<Terminal> {

  var comms = [];
  var comm_result = [];
  PageController _sc = new PageController();
  TextEditingController prompt = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
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
                  height: screenHeight/2.4,
                  width: screenWidth/2.21,
                  child: ListView.builder(
                    itemCount: comms.length+1,
                    itemBuilder: (context, index) {
                      if(comms.length == 0){
                        // add initial prompt
                        print("here");
                        return Container(
                          
                          height: 20,
                          margin: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Text("dkaneria@shell:~\$", style: TextStyle(color: Colors.greenAccent[400]),),
                              Container(
                                margin: EdgeInsets.only(bottom: 5, left: 5),
                                height: 20,
                                width: screenWidth/2.60,
                                child: TextField(
                                  controller: prompt,
                                  autofocus: true,
                                  cursorColor: Colors.blueGrey[50],
                                  cursorWidth: 5,
                                  style: TextStyle(color: Colors.blueGrey[50], fontSize: 14),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  onSubmitted: (value) {
                                      comms.add(value);
                                      print(value);
                                      var help = 'To navigate through the website, use the following commands:\n\nls (To view which directory you\'re currently in.\ncd <directory> to change directory\n--help to view this message';
                                      if(value == '--help'){
                                        comm_result.add(help);
                                      }
                                      else if(value == 'ls'){
                                        var ls = 'home\nprojects\nabout';
                                        comm_result.add(ls);
                                      }
                                      else if(value == 'cd home'){
                                        comm_result.add('');
                                        widget._pg.animateToPage(
                                          0,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn
                                          );
                                      }
                                      else if(value == 'cd projects'){
                                        comm_result.add('');
                                        widget._pg.animateToPage(
                                          1,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn
                                          );
                                      }
                                      else if(value == 'cd about'){
                                        comm_result.add('');
                                        widget._pg.animateToPage(
                                          2,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn
                                          );
                                      }
                                      setState(() {
                                        prompt.clear();
                                      });

                                    },
                                ),
                              )
                            ],
                          ),
                        );
                      }
                      else{
                        if(index != comms.length){
                          return Container(
                            // height: 20,
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("dkaneria@shell:~\$", style: TextStyle(color: Colors.greenAccent[400]),),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 2, left: 5),
                                      height: 20,
                                      width: screenWidth/2.60,
                                      // child: TextField(
                                      //   style: TextStyle(color: Colors.blueGrey[50], fontSize: 14),
                                      //   decoration: InputDecoration(
                                      //     border: InputBorder.none
                                      //   ),
                                      // ),
                                      child: Text(comms[index], style: TextStyle(color: Colors.white),),
                                    )
                                  ],
                                ),
                                comm_result[index] == ''? Container() : Container(child: Text(comm_result[index], style: TextStyle(color: Colors.white70),), alignment: Alignment.centerLeft,)
                              ],
                            ),
                          );
                        }
                        else{
                          return Container(
                            height: 15,
                            padding: EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Text("dkaneria@shell:~\$", style: TextStyle(color: Colors.greenAccent[400]),),
                                Container(
                                  margin: EdgeInsets.only(bottom: 2, left: 5),
                                  height: 15,
                                  width: screenWidth/2.60,
                                  child: TextField(
                                    controller: prompt,
                                    autofocus: true,
                                    cursorColor: Colors.blueGrey[50],
                                    cursorWidth: 5,
                                    style: TextStyle(color: Colors.blueGrey[50], fontSize: 14),
                                    decoration: InputDecoration(
                                      border: InputBorder.none
                                    ),
                                    onSubmitted: (value) {
                                      comms.add(value);
                                      print(value);
                                      var help = 'To navigate through the website, use the following commands:\n\nls (To view which directory you\'re currently in.\ncd <directory> to change directory\n--help to view this message';
                                      if(value == '--help'){
                                        comm_result.add(help);
                                      }
                                      else if(value == 'ls'){
                                        var ls = 'home\nprojects\nabout';
                                        comm_result.add(ls);
                                      }
                                      else if(value == 'cd home'){
                                        comm_result.add('');
                                        widget._pg.animateToPage(
                                          0,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn
                                          );
                                      }
                                      else if(value == 'cd projects'){
                                        comm_result.add('');
                                        widget._pg.animateToPage(
                                          1,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn
                                          );
                                      }
                                      else if(value == 'cd about'){
                                        comm_result.add('');
                                        widget._pg.animateToPage(
                                          2,
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn
                                          );
                                      }
                                      setState(() {
                                        prompt.clear();
                                      });

                                    },
                                  ),
                                  
                                )
                              ],
                            ),
                          );
                        }
                        
                      }
                    },
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}