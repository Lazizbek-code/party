import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpeg'),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1),
              ]
            )
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Find the best parties near you.", style: TextStyle(color: Colors.white, fontSize:40, fontWeight: FontWeight.bold)),
                SizedBox(height:30),
                Text("Let us find you a party for your interest", style: TextStyle(color: Colors.white38, fontSize: 25),),
                SizedBox(height: 150,),
                isLogin ? Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[900]
                  ),
                  child: Center(
                    child: Text("Start", style: TextStyle(color: Colors.white, fontSize:18,),)
                  ),
                )
                :
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red[900]
                  ),
                  child: Center(
                    child: Text("Google+", style: TextStyle(color: Colors.white, fontSize:18,),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}