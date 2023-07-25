import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Profile(),));
}
class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Profile",style: TextStyle(fontSize: 25),)),
        actions: [
          PopupMenuButton<int>(itemBuilder: (context)=>
          [
            const PopupMenuItem(child: Text("Popup Menu Button")),
          ]
          ),
        ],
      ),
      drawer: const NavigationDrawer(children: []),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Image.asset("assets/icons/img_8.png"),
                const Positioned(top: 140,left: 110,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80,
                    child: CircleAvatar(
                      radius: 77,
                      backgroundImage: AssetImage("assets/icons/img_7.png"),
                    ),),),
                const Positioned(top: 190,left: 10,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.deepOrange,
                      child: Icon(Icons.message),
                    ),
                  ),
                ),
                const Positioned(top: 190,right: 10,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: const [
                Text("David Beckham",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Model / superstar",style: TextStyle(color: Colors.lightBlue),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
