import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Musics(),));
}

class Musics extends StatelessWidget {

  var images=[
    "https://images.unsplash.com/photo-1508700115892-45ecd05ae2ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1611605698323-b1e99cfd37ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGlrdG9rJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1499415479124-43c32433a620?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/id/909419882/photo/music-equalizer-background.webp?b=1&s=170667a&w=0&k=20&c=FrPUiLuZ0zDCYyr70oOhzNKmXRYGjmIrvsbFIN19bbw=",
    "https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG11c2ljfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634942536790-dad8f3c0d71b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGlrdG9rJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1523987659364-8ad26ea657ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNhciUyMG11c2ljfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
  ];
  var images_2=["assets/icons/img_39.png","assets/icons/img_40.png","assets/icons/img_41.png",
    "assets/icons/img_42.png","assets/icons/img_43.png","assets/icons/img_44.png",
    "assets/icons/img_45.png","assets/icons/img_46.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            title: const Center(child: Text("Playlists",style: TextStyle(
              color: Colors.purpleAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )
            )),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title:  Center(
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[850],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.purpleAccent[200],
                        labelStyle: const TextStyle(
                            color: Colors.purpleAccent
                        ),
                        hintText: "search..",hintStyle: TextStyle(color: Colors.purpleAccent[200]),
                        suffixIcon: Icon(Icons.search,color: Colors.purpleAccent[200],),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
              [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 7),
                  itemBuilder: (context,index){
                    return  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: NetworkImage(images[index]),fit: BoxFit.cover)
                      ),
                      // child: Image.network(images[index],fit: BoxFit.cover,),
                    );
                  },itemCount: images.length,)
              ]
          ))
        ],
      ),
    );
  }
}
