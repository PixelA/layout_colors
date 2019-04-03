import 'package:flutter/material.dart';

const _Cell_Padding = 10.0;

class _FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 70.0,
    );
  }
}


class _SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: _Cell_Padding),
        child: Row(
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(color: Colors.blue),
              ),
            ),
            Container(
              width: _Cell_Padding,
            ),

            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Column(children: <Widget>[
                  Expanded(child: Container(color: Colors.yellow)),
                  Expanded(child: Container(color: Colors.purple)),
                ]),
              ),
            )
          ],
        ));
  }
}
class _ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _Cell_Padding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 70.0,
            ),
          ),
    Expanded(
      child: Container(
        color: Colors.green,
        height: 70.0,
      ),
    ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              height: 70.0,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
              height: 70.0,
            ),
          ),
        ],
      ),
    );
  }
}
class _AdjustableBlock extends StatelessWidget {
  final double widthFactor;
  _AdjustableBlock(this.widthFactor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _Cell_Padding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widthFactor,
              child: Container(
                color: Colors.red,
                height: 20.0,
              ),
            )
          )

        ],
      )
    );
  }
}



class ColorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(25.0),
            color: Colors.blueGrey,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                _FirstRow(),
                _SecondRow(),
                _ThirdRow(),
                _AdjustableBlock(1.0),
                _AdjustableBlock(0.75),
                _AdjustableBlock(0.50),
              ],
            )));
  }
}
