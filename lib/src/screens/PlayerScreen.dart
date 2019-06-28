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

  TabBarView buildMainView() {
    return TabBarView(
      children: <Widget>[
        CareerTab(),
        Center(child: Text('Logs')),
        Center(child: Text('Advanced')),
      ],
    );
  }
}

class CareerTab extends StatelessWidget {
  const CareerTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Placeholder(),
                ),
                Expanded(
                  child: Placeholder(),
                ),
                Expanded(
                  child: Placeholder(),
                ),
                Expanded(
                  child: Placeholder(),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 10,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
