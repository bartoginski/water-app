import 'package:flutter/material.dart';

class WaterCircle extends StatefulWidget {
  @override
  _WaterCircleState createState() => _WaterCircleState();
}

class _WaterCircleState extends State<WaterCircle> {
  double _progress = 0;
  double _max = 8;
  Color _color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(_color),
            value: _progress,
            strokeWidth: 20,
            backgroundColor: Colors.grey[300],
          ),
        ),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.add, size: 60,),
              onPressed: () {
                setState(() {
                  _progress += 1 / _max;
                  _color =
                  (_progress >= 1.0) ? Colors.yellowAccent : Colors.blue;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove, size: 60,),
              onPressed: () {
                setState(() {
                  _progress -= 1 / _max;
                  _color =
                  (_progress >= 1.0) ? Colors.yellowAccent : Colors.blue;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
