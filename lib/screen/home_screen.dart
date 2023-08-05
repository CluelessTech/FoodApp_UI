import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/search.dart';
import 'package:food_app_ui/shared/app_import.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 66,
          leading: const Icon(Icons.arrow_back_ios_sharp),
          title: IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(left: 116),
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  const SizedBox(
                    height: 46,
                    child: VerticalDivider(
                      width: 1,
                      thickness: 1,
                      color: Colors.black,
                      indent: 8,
                      endIndent: 12,
                    ),
                  ),
                  IconButton(
                    // height: 46,
                    // width: 46,
                    // margin: EdgeInsets.only(left: 138),
                    padding: const EdgeInsets.all(11),

                    onPressed: () {
                      onCartPressed(context);
                    },
                    icon: const Icon(Icons.shopping_cart),
                  ),
                  Container(
                    width: 13,
                    margin: const EdgeInsets.only(top: 7, right: 6, bottom: 26),
                    padding: const EdgeInsets.fromLTRB(4, 1, 4, 1),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white38,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            0,
                            30,
                          ),
                        ),
                      ],
                      // color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    child: const Text(
                      "1",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        // color: Colors.grey,
                        fontSize: 7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: mediaQueryData.size.height - 100,
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 17),
            child: SizedBox(
              // height: 978,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: const EdgeInsets.only(left: 33, top: 35, right: 33, bottom: 35),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Found  6 results",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1, top: 39, bottom: 80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 17, bottom: 61),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            onTapVeggieTomato(context);
                                          },
                                          child: SizedBox(
                                            height: 252,
                                            width: 156,
                                            child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Container(
                                                    padding: const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 20),
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Colors.white38,
                                                          spreadRadius: 2,
                                                          blurRadius: 2,
                                                          offset: Offset(
                                                            0,
                                                            30,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.circular(
                                                        30,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 92,
                                                          margin: const EdgeInsets.only(top: 84),
                                                          child: const Text(
                                                            "Veggie tomato mix",
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets.only(left: 20, top: 25),
                                                          child: Text(
                                                            "N1,900",
                                                            style: TextStyle(color: Colors.deepOrange),
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 60,
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      width: 180.0,
                                                      height: 180.0,
                                                      child: Image.asset(
                                                        'assets/images/food1.jpg',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            onTapVeggieTomato(context);
                                          },
                                          child: SizedBox(
                                            height: 252,
                                            width: 156,
                                            child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Container(
                                                    padding: const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 20),
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Colors.white38,
                                                          spreadRadius: 2,
                                                          blurRadius: 2,
                                                          offset: Offset(
                                                            0,
                                                            30,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.circular(
                                                        30,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 92,
                                                          margin: const EdgeInsets.only(top: 84),
                                                          child: const Text(
                                                            "Egg and cucmber...",
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets.only(left: 20, top: 25),
                                                          child: Text(
                                                            "N1,900",
                                                            style: TextStyle(color: Colors.deepOrange),
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 60,
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      width: 180.0,
                                                      height: 180.0,
                                                      child: Image.asset(
                                                        'assets/images/food2.jpg',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            onTapVeggieTomato(context);
                                          },
                                          child: SizedBox(
                                            height: 252,
                                            width: 156,
                                            child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Container(
                                                    padding: const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 20),
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Colors.white38,
                                                          spreadRadius: 2,
                                                          blurRadius: 2,
                                                          offset: Offset(
                                                            0,
                                                            30,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.circular(
                                                        30,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 92,
                                                          margin: const EdgeInsets.only(top: 84),
                                                          child: const Text(
                                                            "Fried chicken m.",
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets.only(left: 20, top: 25),
                                                          child: Text(
                                                            "N1,900",
                                                            style: TextStyle(color: Colors.deepOrange),
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 60,
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      width: 180.0,
                                                      height: 180.0,
                                                      child: Image.asset(
                                                        'assets/images/food3.jpg',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 17, top: 54),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            onTapVeggieTomato(context);
                                          },
                                          child: SizedBox(
                                            height: 252,
                                            width: 156,
                                            child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Container(
                                                    padding: const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 20),
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Colors.white38,
                                                          spreadRadius: 2,
                                                          blurRadius: 2,
                                                          offset: Offset(
                                                            0,
                                                            30,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.circular(
                                                        30,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 92,
                                                          margin: const EdgeInsets.only(top: 84),
                                                          child: const Text(
                                                            "Moi-moi and ekpa.",
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets.only(left: 20, top: 25),
                                                          child: Text(
                                                            "N1,900",
                                                            style: TextStyle(color: Colors.deepOrange),
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 60,
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      width: 180.0,
                                                      height: 180.0,
                                                      child: Image.asset(
                                                        'assets/images/food4.jpg',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            onTapVeggieTomato(context);
                                          },
                                          child: SizedBox(
                                            height: 252,
                                            width: 156,
                                            child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Container(
                                                    padding: const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 20),
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Colors.white38,
                                                          spreadRadius: 2,
                                                          blurRadius: 2,
                                                          offset: Offset(
                                                            0,
                                                            30,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.circular(
                                                        30,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 92,
                                                          margin: const EdgeInsets.only(top: 84),
                                                          child: const Text(
                                                            "Veggie tomato mix",
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets.only(left: 20, top: 25),
                                                          child: Text(
                                                            "N1,900",
                                                            style: TextStyle(color: Colors.deepOrange),
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 60,
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      width: 180.0,
                                                      height: 180.0,
                                                      child: Image.asset(
                                                        'assets/images/food5.jpg',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            onTapVeggieTomato(context);
                                          },
                                          child: SizedBox(
                                            height: 252,
                                            width: 156,
                                            child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Container(
                                                    padding: const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 20),
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Colors.white38,
                                                          spreadRadius: 2,
                                                          blurRadius: 2,
                                                          offset: Offset(
                                                            0,
                                                            30,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.circular(
                                                        30,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 92,
                                                          margin: const EdgeInsets.only(top: 84),
                                                          child: const Text(
                                                            "Moi-moi and ekpa.",
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets.only(left: 20, top: 25),
                                                          child: Text(
                                                            "N1,900",
                                                            style: TextStyle(color: Colors.deepOrange),
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 60,
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      width: 180.0,
                                                      height: 180.0,
                                                      child: Image.asset(
                                                        'assets/images/food6.jpg',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onCartPressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutScreen);
  }

  void onTapVeggieTomato(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailScreen);
  }
}
