import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets.dart';
import 'package:flutter_application_1/pages/toy/controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

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
    final controller = ToyController();
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 72, 20, 35),
      margin: const EdgeInsets.fromLTRB(14, 55, 14, 0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(35))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Username or E-Mail',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff838383),
              fontWeight: FontWeight.w300,
            )
          ),
          GetX<ToyController>(
            init: controller,
            initState: (_) {},
            builder: (_) {
              return TextField(
                onChanged: (value) {
                  bool valid = false;
                  if (value.length > 6) {
                    valid = true;
                  } else {
                    valid = false;
                  }
                  _.isUserNameValid = valid;
                },
                decoration: InputDecoration(
                  hintText: "Email",
                  // icon: const Icon(Icons.account_circle_sharp),
                  suffixIcon: _.isUserNameValid == true
                      ? const Icon(
                          Icons.done,
                          color: Colors.green,
                        )
                      : null,
                ),
              );
            },
          ),
          const SizedBox(height: 35),
          const Text('Password',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff838383),
                fontWeight: FontWeight.w300,
              )),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              // icon: Icon(Icons.password),
              suffixIcon: TextButton(
                // onPressed: () {},
                child: Text(
                  "Forget?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff0274bc),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 29),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Sıgn In',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            ),
            style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 60)),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xffFD8700)),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)))),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?", style: TextStyle(
                color: Colors.black,
                fontSize: 15
              )),
              TextButton(
                onPressed: () {
                }, 
                child: const Text('Sign Up', style: TextStyle(
                color: Color(0xff0274BC),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ))),
            ],
          )
        ],
      ),
    );
  }
}
