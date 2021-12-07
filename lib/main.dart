import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.amber,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          )),
          bottom: PreferredSize(
            preferredSize: Size.square(200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 70),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/rrr.jpg",),
                    radius: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.amber,
                        child: Text(
                          "Mrittika Banik",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.amber,
                        child: Text(
                          "swipe up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "MyTasks",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.00),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.cyan),
                      height: 50.00,
                      width: 50.00,
                      child: (
                        IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today),
                        color: Colors.white,
                      )
                    ),
                    ),
                  ]
                ),
              ),
              ListTile(
                title: Text(
                  "To Do",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.00),
                ),
                subtitle: Text("10 tasks now. 1 started"),
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  height: 50.00,
                  width: 50.00,
                  child: Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "In Progress",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.00),
                ),
                subtitle: Text("50 tasks now.1 started"),
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.amber),
                  height: 50.00,
                  width: 50.00,
                  child: Icon(
                    Icons.push_pin_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Done",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.00),
                ),
                subtitle: Text("18 tasks now. 13 started"),
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue),
                  height: 50.00,
                  width: 50.00,
                  child: Icon(
                    Icons.check_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Active Projects",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.00),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200.00,
                    width: 140.00,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan),
                  ),
                  Container(
                    height: 200.00,
                    width: 140.00,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
