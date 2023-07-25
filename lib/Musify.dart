import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Musify(),));
}

class Musify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var images=["assets/icons/img_38.png","assets/icons/img_47.png","assets/icons/img_48.png","assets/icons/img_49.png",
      "assets/icons/img_43.png"];
    var title=["Hero","Unholy","Lift me up","Depression","Iam good","Iam bad","Iam great","Iam Rich","Feeling good",
      "Good vibes"];
    var images_2=["assets/icons/img_50.png","assets/icons/img_51.png","assets/icons/img_52.png",
      "assets/icons/img_53.png","assets/icons/img_54.png","assets/icons/img_55.png","assets/icons/img_56.png",
      "assets/icons/img_57.png","assets/icons/img_58.png","assets/icons/img_59.png"];
    var subtitle=["Taylor swift","sam smith,simpetras","Rihana","Dax","David guetta,Babe rexha",
      "Justin bieber","Shreya goshal","Ranvir","billie Elish","Eminem"];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black, title: Center(
        child: Text("Musify",textAlign: TextAlign.center,style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purpleAccent[200],),),
      ),),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Suggested Playlist",style: TextStyle(
                color: Colors.purple[200],fontWeight: FontWeight.bold,fontSize: 20),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(images.length, (index) => Padding(
                  padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
                  child: Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover,),
                        borderRadius: BorderRadius.circular(35)
                    ),
                  ),
                )),
              ),
            ),
            //SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Text(
                      "Recommended for you",style: TextStyle(fontSize: 25,color: Colors.purple[200]),),
                  ),
                  Container(
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            images_2.length, (index) => ListTile(
                          leading: Container(
                            height: 90,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage(images_2[index]),fit: BoxFit.cover),
                            ),
                          ),
                          title: Text(title[index],style: TextStyle(color: Colors.purple[200]),),
                          subtitle: Text(subtitle[index],style: TextStyle(color: Colors.white),),
                          trailing: Wrap(
                            children: [
                              Icon(Icons.star,color: Colors.purple[200],),
                              SizedBox(width: 15,),
                              Icon(Icons.download,color: Colors.purple[200],)
                            ],
                          ),
                        )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBar(
                backgroundColor: Colors.black,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.purple[200],),label: "Home",
                      backgroundColor: Colors.black),
                  BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.purple[200],),label: "search",
                      backgroundColor: Colors.black),
                  BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Colors.purple[200],),label: "dashboard",
                      backgroundColor: Colors.black),
                  BottomNavigationBarItem(icon: Icon(Icons.menu_outlined,color: Colors.purple[200],),label: "menu",
                      backgroundColor: Colors.black),
                ])
          ],
        ),
      ),
    );
  }
}
