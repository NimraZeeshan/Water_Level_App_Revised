import 'package:flutter/material.dart';

class GraphInCard extends StatefulWidget {
  const GraphInCard({Key? key}) : super(key: key);

  @override
  _GraphInCardState createState() => _GraphInCardState();
}

class _GraphInCardState extends State<GraphInCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 0.0,
      ),
      child: Card(
        child: Text('Im card'),
        color: Colors.pink,
      ),
    );
  }
}
