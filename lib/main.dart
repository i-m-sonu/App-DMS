import 'package:dms/detail.dart';
import 'package:dms/loader.dart';
import 'package:dms/newdetail.dart';
import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";

import 'loc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loader(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Navigate to the search page
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carousel
            CarouselSlider(
              items: [
                // Add carousel items as needed
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Image.network('https://example.com/image1.jpg', fit: BoxFit.cover),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Image.network('https://example.com/image2.jpg', fit: BoxFit.cover),
                ),
                // Add more carousel items
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
            ),
            // Cards
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Card 1
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => newdetail()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Data List'),
                        subtitle: Text('Tap to view data list'),
                        leading: Icon(Icons.list),
                      ),
                    ),
                  ),
                  // Card 2
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => detail()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Brief Description'),
                        subtitle: Text('Tap to view brief description'),
                        leading: Icon(Icons.description),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> loc()));
                    },
                  )
                  
                  // Add more cards as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Add other page classes (e.g., SearchPage, DataListPage, DescriptionPage) based on your requirements
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Center(
        child: Text('Search Page Content'),
      ),
    );
  }
}




// Add more page classes as needed
