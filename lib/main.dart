import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Test(),
));

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int follower = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Discord',
          style: TextStyle(
            color: Colors.amber[800],
          ),
        ),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(55.0, 60.0, 0.0, 0.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green[400],
                        radius: 8.5,
                      ),
                    ),
                  ],
                ),
                backgroundImage: AssetImage('Asset/Discord.png'),
                backgroundColor: Colors.grey[900],
                minRadius: 30,
                maxRadius: 45,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
              thickness: 1.0,
            ),
            Text(
              'MK15',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'username#3596',
              style: TextStyle(
                color: Colors.amber[800],
                letterSpacing: 2.0,
                fontSize: 23.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Follower',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '$follower',
              style: TextStyle(
                color: Colors.red[700],
                letterSpacing: 2.0,
                fontSize: 23.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.gamepad_outlined,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Game',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            follower+=1;
          });
        },
        child: Icon(Icons.thumb_up_outlined),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}