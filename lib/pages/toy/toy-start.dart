import 'package:flutter/material.dart';

class ToyStartView extends StatelessWidget {
  const ToyStartView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 96),
            child: SizedBox(
              width: 297,
              child: Text(
                "Browse & Order All Products at Any Time", 
                textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Color(0xff2b2a2a),
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
