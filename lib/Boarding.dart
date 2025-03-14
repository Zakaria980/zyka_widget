import 'package:fiqhanflutter/page1.dart';
import 'package:flutter/material.dart';
import 'package:fiqhanflutter/page2.dart';

class Boarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Decoration App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: boarding(),
      routes: {
        '/boarding': (context) => BoardingScreen(),
      },
    );
  }
}

class boarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/assets1/group11.png'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 53, 47, 47), Colors.white],
              stops: [0.02, 1.0]
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 150.0),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Cooking\n',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Delicious\n',
                    style: TextStyle(color: Colors.grey[300],),
                  ),
                  TextSpan(
                    text: 'Like a ',
                    style: TextStyle(color: Colors.grey[300],),
                  ),
                  TextSpan(
                    text: 'Chef',
                    style: TextStyle(
                      color: Colors.grey[300],
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                      decorationColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'This recipe app offers a wide selection of diverse\nand easy recipes suitable for all cooking levels!',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 19.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boarding'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Ini adalah halaman Boarding!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
