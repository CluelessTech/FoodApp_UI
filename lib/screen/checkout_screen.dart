import 'package:flutter/material.dart';

import '../shared/app_import.dart';

enum PaymentMethod { cash, bankAccount }

enum DeliveryMethod { doorDelivery, pickUp }

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  PaymentMethod paymentMethod = PaymentMethod.cash;

  DeliveryMethod deliveryMethod = DeliveryMethod.doorDelivery;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 22),
            child: Padding(
              padding: const EdgeInsets.only(left: 46, right: 48, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                      "Cart",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 3, top: 41),
                      child: Text("Items",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ))),
                  Container(
                    width: 315,
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.only(left: 22, top: 17, right: 22, bottom: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.03),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ).copyWith(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          // width: 225,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/images/food1.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 16, bottom: 8),
                                      child: Text(
                                        "Veggie tomato mix",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.black.withOpacity(0.46),
                              indent: 14,
                              endIndent: 25,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 46, bottom: 44),
                            child: Text(
                              "Egg and cucumber",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4, top: 42),
                    child: Text(
                      "Payment",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 3, top: 39),
                    child: Text(
                      "Payment method",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 315,
                    margin: const EdgeInsets.only(top: 14),
                    padding: const EdgeInsets.only(left: 21, top: 20, right: 21, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.03),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ).copyWith(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 119,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 6),
                                  child: RadioMenuButton(
                                    value: PaymentMethod.cash,
                                    groupValue: paymentMethod,
                                    onChanged: (value) {
                                      setState(() {
                                        paymentMethod = value!;
                                      });
                                    },
                                    child: const Row(
                                      children: [
                                        Icon(Icons.credit_card),
                                        Text('Card'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.black.withOpacity(0.46),
                                indent: 30,
                                endIndent: 11,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 189,
                          margin: const EdgeInsets.only(top: 14, bottom: 55),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 6),
                                  child: RadioMenuButton(
                                    value: PaymentMethod.bankAccount,
                                    groupValue: paymentMethod,
                                    onChanged: (value) {
                                      setState(() {
                                        paymentMethod = value!;
                                      });
                                    },
                                    child: const Row(
                                      children: [
                                        Icon(Icons.home_filled),
                                        Text("Bank account"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, top: 20),
                    child: Text(
                      "Delivery method.",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    width: 315,
                    margin: const EdgeInsets.only(left: 5, top: 14),
                    padding: const EdgeInsets.only(left: 21, top: 30, right: 21, bottom: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.03),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ).copyWith(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RadioMenuButton(
                          value: DeliveryMethod.doorDelivery,
                          groupValue: deliveryMethod,
                          onChanged: (value) {
                            setState(() {
                              deliveryMethod = value!;
                            });
                          },
                          child: const Text('Door delivery'),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 19),
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.black.withOpacity(0.46),
                                indent: 30,
                                endIndent: 11,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: RadioMenuButton(
                            value: DeliveryMethod.pickUp,
                            groupValue: deliveryMethod,
                            onChanged: (value) {
                              setState(() {
                                deliveryMethod = value!;
                              });
                            },
                            child: const Text('Pick up'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4, top: 40, right: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Total",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        Text(
                          "23,000",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 36),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 41),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.deepOrange,
              fixedSize: const Size.fromHeight(70),
              // Text Color (Foreground color)
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Order!!"),
                  content: const Text("Your Order has been placed successfully!!"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.homeScreen);
                      },
                      child: const Text("okay"),
                    ),
                  ],
                ),
              );
            },
            child: const Text("Proceed to payment"),
          ),
        ),
      ),
    );
  }
}
