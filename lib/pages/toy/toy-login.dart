import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets.dart';

class ToyLoginView extends StatelessWidget {
  const ToyLoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0274BC),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(AssetImages.logoPng, width: 60, height: 60),
            const SizedBox(height: 22),
            const Text('Let’s Sign You In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none)),
            const SizedBox(height: 10),
            const Text('Welcome back, you’ve been missed!',
                style: TextStyle(
                    color: Color(0xffEEEEEE),
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none)),
            _buildForm()
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 72, 20, 35),
      margin: const EdgeInsets.fromLTRB(14, 55, 14, 0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(35))),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                label: Text('Username or E-Mail'),
                icon: Icon(Icons.account_circle_sharp)),
          ),
          const TextField(
            decoration: InputDecoration(
                label: Text('Password'), icon: Icon(Icons.password)),
          ),
          const SizedBox(height: 29),
          ElevatedButton(
            onPressed: () {}, 
            child: const Text(
              'Sıgn In',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300
              ),
            ),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                const Size(double.infinity, 60)
              ),
              backgroundColor: MaterialStateProperty.all(const Color(0xffFD8700)),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18)
                  )
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
