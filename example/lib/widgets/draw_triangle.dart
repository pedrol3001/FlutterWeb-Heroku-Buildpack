import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart';



class DrawTriangle extends CustomPainter {

 Paint _paint;

 final Vector3 x;
 final Vector3 y;


 final Color color;

  DrawTriangle({@required this.x, @required this.y , @required this.color}){
    _paint = Paint()
      ..color = this.color
      ..style = PaintingStyle.fill;
  }


  @override
  void paint (Canvas canvas, Size size){


    var path = Path();
    path.moveTo(size.width * x[0], size.height * y[0]);
    path.lineTo(size.width *x[1], size.height * y[1]);
    path.lineTo(size.width *x[2], size.height * y[2]);


    path.close();


    canvas.drawPath(path, _paint);

  }
   @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }


}