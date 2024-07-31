import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var  arrayData = [

    {
      'name' : 'FirstName',
      "number" : '031393344',
      'roll' : '1'
    },

    {
      'name' : 'SecondName',
      "number" : '031393344',
      'roll' : '2'
    },

    {
      'name' : 'ThirdName',
      "number" : '031393344',
      'roll' : '3'
    },

    {
      'name' : 'FourthName',
      "number" : '031393344',
      'roll' : '4'
    },





  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView(
            children: arrayData.map((value) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.blueGrey,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['number'].toString()),
                      trailing: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: Text(value['roll'].toString()),),
                    ),
                  ),
                ),
              );
            }).toList()
          ),
        ),
      ),
    );
  }
}





