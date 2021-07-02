import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome>
    with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;
  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    );
    print(myanicon);
  
    
    animation = CurvedAnimation(
      parent: myanicon, 
      curve: Curves.fastLinearToSlowEaseIn
    )
    ..addListener(() {

      setState(() {
        print(animation.value);
      });
     });
    myanicon.forward();
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.teal,
        title: Text('CHAT APP'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("   WELCOME ",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),

                ),
              SizedBox(
                height: 30,
              ),
              Card( child: Center(
                  child: Image.asset('images/icon.jpg'),
                ),),
              SizedBox(
                height: 10,
              ),
             
              Material(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(20),
                elevation: 10,
                child: Column(
                  children: [
                    Text("Create an account "),
                    MaterialButton(
                      minWidth: 300 * animation.value,
                      height: 40 * animation.value,
                      child: Text('SIGN -IN '),
                      onPressed: () {
                        Navigator.pushNamed(context, "reg");
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(20),
                elevation: 10,
                child: Column(
                  children: [
                    Text("Already have an account"),
                    MaterialButton(
                      minWidth: 300 * animation.value,
                      height: 40 * animation.value,
                      child: Text('LOGIN'),
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
