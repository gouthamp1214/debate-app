import 'dart:core';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // use this controller to get what the user typed
  final _textControllersports = TextEditingController();
  final _textControllerpolitics = TextEditingController();
  final _textControllerscience = TextEditingController();
  final _textControllermovie = TextEditingController();

  //to store user text input into a variable
  String sportsPost = '';
  String politicsPost = '';
  String sciencePost = '';
  String moviePost = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //Sports related posts

            const Text(
              'Sports',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),

            //Display Text
            SizedBox(
              height: 200,
              width: 400,
              child: Container(
                color: Colors.grey[400],
                child: Text(
                  sportsPost,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            //Text Input
            TextField(
              controller: _textControllersports,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    //clear what's currently typed in the textfield
                    _textControllersports.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            // Post Button
            MaterialButton(
              onPressed: () {
                //Update our string variable to get the new userpost
                setState(() {
                  sportsPost = _textControllersports.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Post',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            //Politics related posts

            const Text(
              'Politics',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),

            //Display Text
            SizedBox(
              height: 200,
              width: 400,
              child: Container(
                color: Colors.grey[400],
                child: Text(
                  politicsPost,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            //Text Input
            TextField(
              controller: _textControllerpolitics,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    //clear what's currently typed in the textfield
                    _textControllerpolitics.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            // Post Button
            MaterialButton(
              onPressed: () {
                //Update our string variable to get the new userpost
                setState(() {
                  politicsPost = _textControllerpolitics.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Post',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            //Science & Technolog related posts

            const Text(
              'Science & Technology',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),

            //Display Text
            SizedBox(
              height: 200,
              width: 400,
              child: Container(
                color: Colors.grey[400],
                child: Text(
                  sciencePost,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            //Text Input
            TextField(
              controller: _textControllerscience,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    //clear what's currently typed in the textfield
                    _textControllerscience.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            // Post Button
            MaterialButton(
              onPressed: () {
                //Update our string variable to get the new userpost
                setState(() {
                  sciencePost = _textControllerscience.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Post',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            //Movie related posts

            const Text(
              'Movie Talk Show',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),

            //Display Text
            SizedBox(
              height: 200,
              width: 400,
              child: Container(
                color: Colors.grey[400],
                child: Text(
                  moviePost,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            //Text Input
            TextField(
              controller: _textControllermovie,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    //clear what's currently typed in the textfield
                    _textControllermovie.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            // Post Button
            MaterialButton(
              onPressed: () {
                //Update our string variable to get the new userpost
                setState(() {
                  moviePost = _textControllermovie.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Post',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
