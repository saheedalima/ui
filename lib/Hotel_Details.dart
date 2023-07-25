import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Hotel_Details(),));
}

class Hotel_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hotel Details"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Like"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/img_5.png"),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: 230,
                child: Column(
                  children: const [
                    Text(
                      "Crowne Plaza",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Kochi, Kerala",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "8.4/85 rating..",
                      style: TextStyle(
                        backgroundColor: Colors.grey,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                  top: 240,
                  left: 330,
                  child: Icon(
                    Icons.favorite,
                    size: 50,
                  )),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  const Text(
                    "200",
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.directions),
                      Text("8 km to lulumall"),
                    ],
                  ),
                  Text("/per night"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                minWidth: 200,
                height: 50,
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("Book Now.."),
              ),
            ),
            Container(
              height: 300,
              width: 390,
              child: SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Ramada Plaza Palm Grove",
                            style: TextStyle(fontSize: 25)),
                      ),
                    ),
                    Text(
                      "Hotel, house, inn, tavern refer to establishments for the lodging or entertainment of travelers and others. Hotel is the common word, suggesting a more or less commodious establishment with up-to-date appointments, although this is not necessarily true: the best hotel in the city; a cheap hotel near the docks. The word house is often used in the name of a particular hotel, the connotation being wealth and luxury: the Parker House; the Palmer House. Inn suggests a place of homelike comfort and old-time appearance or ways; it is used for quaint or archaic effect in the names of some public houses and hotels in the U.S.: the Pickwick Inn; the Wayside Inn. A tavern, like the English public house, is a house where liquor is sold for drinking on the premises; until recently it was archaic or dialectal in the U.S., but has been revived to substitute for saloon, which had unfavorable connotations: Taverns are required to close by two o'clock in the morning. The word has also been used in the sense of inn, especially in New England, ever since Colonial days: Wiggins Tavern.",
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
