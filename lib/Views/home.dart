import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
          )
        ],
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
      child: Text("Your Post goes here and will be public to all users in no time."),
    );
  }

  Widget buildLikeRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.thumb_up, color: Colors.grey,),
          Container(
            height: 30,
            child: VerticalDivider(color: Colors.blueGrey,),
          ),
          Icon(Icons.favorite, color: Colors.grey,),
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
