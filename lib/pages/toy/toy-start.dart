import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets.dart';
import 'package:flutter_application_1/common/router/app_routes.dart';
import 'package:get/get.dart';

class ToyStartView extends StatelessWidget {
  const ToyStartView({Key key}) : super(key: key);

  void onToLogin(context) {
    Get.toNamed(AppRoutes.Toy + AppRoutes.ToyLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 96),
            child: SizedBox(
              width: 297,
              child: Text("Browse & Order All Products at Any Time",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff2b2a2a),
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 71),
          Image.asset(AssetImages.welcomePng),
          const SizedBox(height: 72),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => onToLogin(context),
                  child: const Text(
                    'Skip', 
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    )
                  ),
                ),
                ElevatedButton(
                  onPressed: () => onToLogin(context), 
                  child: const Text('Get Started', style: TextStyle(
                    fontSize: 15,
                  ),),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(32)
                        )
                      )
                    ),
                    backgroundColor: MaterialStateProperty.all(const Color(0xffFD8700)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
