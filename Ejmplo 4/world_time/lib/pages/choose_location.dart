import 'package:flutter/material.dart';
import 'package:worldtime/services/world.time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  /*//Run everything even if the last thing didn't finish yet
  void getDataSync() {
    // simulate network request for a username
    Future.delayed(Duration(seconds: 3), () {
      print('Yoshi sync');
    });

    //Simulate network request to get bio of the username
    Future.delayed(Duration(seconds: 2), () {
      print('Vega, musician & egg collector sync');
    });

    print('statement sync');
  }

  //Waits until the last task finish to start the next one
  void getDataASync() async {
    // simulate network request for a username
    await Future.delayed(Duration(seconds: 5), () {
      print('Yoshi async');
    });

    String username = await Future.delayed(Duration(seconds: 2), () {
      return 'yoshi';
    });

    //Simulate network request to get bio of the username
    await Future.delayed(Duration(seconds: 2), () {
      print('Vega, musician & egg collector async $username');
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Vega, musician & egg collector async $username';
    });

    print('statement async $username - $bio');
  }

  @override
  void initState() {
    super.initState();
    print('Init state function ran');
    getDataSync();
    getDataASync();
    print('Hey there!');
  }*/

  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: 'uk.png', url: 'Europe/London'),
    WorldTime(location: 'Berlin', flag: 'greece.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'egypt.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Chicago', flag: 'usa.png', url: 'America/Chicago'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // Navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Build function ran $counter');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      /*body: RaisedButton(onPressed: () {
        setState(() {
          counter++;
        });
      },
      child: Text('Counter is $counter'),*/
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric( vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                  //print(locations[index].location);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        }
      )
      );
  }
}
