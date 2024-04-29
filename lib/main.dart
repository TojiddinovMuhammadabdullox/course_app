import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button tap
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Course Details"),
              Icon(Icons.favorite), // Heart icon
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border), // Placeholder icon
              onPressed: () {
                // Handle heart icon tap
              },
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue, // Blue background color
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle Playlist tap
                      },
                      child: Text(
                        "Playlist(27)",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle Description tap
                      },
                      child: Text(
                        "Description",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      // Music player design here
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue, // Blue background color
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.skip_previous),
                              onPressed: () {
                                // Handle previous button tap
                              },
                              color: Colors.white, // Button icon color
                            ),
                            IconButton(
                              icon: Icon(Icons.play_arrow),
                              onPressed: () {
                                // Handle play button tap
                              },
                              color: Colors.orange, // Button icon color
                            ),
                            IconButton(
                              icon: Icon(Icons.pause),
                              onPressed: () {
                                // Handle pause button tap
                              },
                              color: Colors.white, // Button icon color
                            ),
                            IconButton(
                              icon: Icon(Icons.skip_next),
                              onPressed: () {
                                // Handle next button tap
                              },
                              color: Colors.white, // Button icon color
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      // Music list design here
                      SizedBox(
                          height:
                              20), // Adding space between music player and playlist
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5, // Only show 5 songs
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text("Song ${index + 1}"),
                              subtitle: Text("Artist Name"),
                              trailing: Icon(Icons.lock), // Locked icon
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      // Purchase button
                      ElevatedButton(
                        onPressed: () {
                          // Handle purchase button tap
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Text(
                            "Purchase only - 25",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
