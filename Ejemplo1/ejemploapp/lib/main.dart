import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

//Para hacer gotReload y otras funcionalidades.
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app!'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row (
        children: <Widget>[
          Expanded(
            flex: 2,
              child: Image.asset('assets/space-1.jpg')),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),

      /*Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Hello'),
              Text(' world'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                    padding: EdgeInsets.all(30.0),
                    color: Colors.amber,
                    child: Text('Two2')
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: Text('One')
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(40.0),
                  color: Colors.pinkAccent,
                  child: Text('Three')
              ),
            ],
          ),
        ]
      ),*/
      /*Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('Hello world'),
          FlatButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('Click me')
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('Inside container'),
          )
        ],
      ),*/
      /*Padding(
        padding: EdgeInsets.all(90.0),
        child: Text('Hello'),
      ),*/
      /*Container(
        //padding: EdgeInsets.all(20.0),
        //padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.grey[400],
        child: Text('Hello'),
      ),*/
      /*Center(
        child: IconButton(
          onPressed: () {
            print('You clicked me');
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        )
        /*child: RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.mail),
            label: Text('Mail me'),
            color: Colors.amber,
        ),*/
        /*child: FlatButton(
          onPressed: () {
            print('You clicked me');
          },
          child: Text('Click me'),
          color: Colors.lightBlue,
        ),*/
        /*child: RaisedButton(
          onPressed: () {},
          child: Text('Click me'),
          color: Colors.lightBlue,
        ),*/
        /*child: Icon(
          Icons.airport_shuttle,
          color: Colors.red,
          size: 50.0,
        ),*/
        //child: Image.network('https://images.unsplash.com/photo-1501549538842-2f24e2dd6520?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
        //child: Image.asset('assets/space-1.jpg'),
        /*child: Image(
          image: AssetImage('assets/space-2.jpg'),
        ),*/
        /*child: Image(
            image: NetworkImage('https://images.unsplash.com/photo-1501549538842-2f24e2dd6520?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
        ),*/
        /*child: Text(
          'Hello ninjas!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'IndieFlower',
          ),
        ),*/
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor:  Colors.red[600],
      ),
    );
  }
}
