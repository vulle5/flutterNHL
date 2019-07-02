import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nhl_compare/src/models/Player.dart';

class PlayerScreen extends StatelessWidget {
  final Future<Player> player;

  PlayerScreen({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: player,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return buildMainView();
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // Default
        return CircularProgressIndicator();
      },
    );
  }

  Container buildMainView() {
    return Container(
      height: 1000,
      child: TabBarView(
        children: <Widget>[
          CareerTab(),
          Center(child: Text('Logs')),
          Center(child: Text('Advanced')),
        ],
      ),
    );
  }
}

class CareerTab extends StatelessWidget {
  const CareerTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CareerTile(),
        Divider(),
      ],
    );
  }
}

class CareerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Season",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Text("2018-2019")
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "League",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Text("NHL")
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Team",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Text("VAN")
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Points",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Text("96")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
