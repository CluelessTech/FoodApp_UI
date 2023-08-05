import 'package:flutter/material.dart';

import '../shared/app_import.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Checkout",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            // padding: const EdgeInsets.fromLTRB(41, 32, 41, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 150,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/food1.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Veggie tomato mix",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "N1,900",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        // color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 31),
                  child: Text(
                    "Delivery info",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    margin: const EdgeInsets.only(left: 12, top: 1, right: 55),
                    child: const Text(
                      "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 39),
                  child: Text(
                    "Return policy",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    margin: const EdgeInsets.only(left: 12, right: 27),
                    child: const Text(
                      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(letterSpacing: 0.3),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 41),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepOrange,
              fixedSize: const Size.fromHeight(70),
            ),
            onPressed: () {
              onTapAddtocart(context);
            },
            child: const Text("Add to cart"),
          ),
        ),
      ),
    );
  }

  void onTapAddtocart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutScreen);
  }
}
