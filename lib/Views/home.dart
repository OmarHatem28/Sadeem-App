import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  List<String> drawerItems = [
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
    "Explore",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  )),
              Expanded(
                  child: Container(
                    color: Colors.white,
                  )),
            ],
          ),
          ListView.builder(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            itemCount: 10,
            itemBuilder: (context, i) {
              return Card(
                elevation: 20,
                margin: EdgeInsets.all(40),
                child: Column(
                  children: <Widget>[
                    buildInfoRow(),
                    buildPostRow(),
                    buildLikeRow(),
                  ],
                ),
              );
            },
          ),
          Container(
            height: 70,
            child: AppBar(
              title: Text("Explore", style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              actionsIconTheme: IconThemeData(color: Colors.black),
              centerTitle: true,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: buildDrawer(),
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45)),
                ),
                accountName: Text("Sadeem App"),
                accountEmail: Text("Sadeem@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.black38,
                ),
              ),
              Column(
                children: drawerItems.map((item) {
                  return ListTile(
                    leading: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.blue,
                      ),
                    ),
                    title: Text(item),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
          ),
        ),
        Spacer(),
        Text("User Name"),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert, color: Colors.grey,),
        ),
      ],
    );
  }

  Widget buildPostRow() {
    return Container(
      padding: EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Text(
          "Your Post goes here and will be public to all users in no time."),
    );
  }

  Widget buildLikeRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("28"),
              ),
            ],
          ),
          Container(
            height: 30,
            child: VerticalDivider(color: Colors.blueGrey,),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.mode_comment, color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("28"),
              ),
            ],
          ),
          Container(
            height: 30,
            child: VerticalDivider(color: Colors.blueGrey,),
          ),
          Icon(Icons.share, color: Colors.grey,),
        ],
      ),
    );
  }
}
