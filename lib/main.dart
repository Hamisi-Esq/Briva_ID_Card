import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=> runApp(MaterialApp(
  home: BrivaCard(),
));

class BrivaCard extends StatefulWidget {
  @override
  _BrivaCardState createState() => _BrivaCardState();
}

class _BrivaCardState extends State<BrivaCard> {

  int codinglevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Briva ID Card.'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0 ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            codinglevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor:Colors.grey[800] ,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/briva.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Briva-Hamisi',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT CODING LEVEL.',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$codinglevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'brivahamisi@gmail.com',
                  style:TextStyle(
                    color: Colors.grey[400],
                        fontSize:18.0,
                    letterSpacing: 1.0,

                      ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}


