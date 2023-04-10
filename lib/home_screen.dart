import 'package:flutter/material.dart';
import 'package:foodeca_ui/bottom_navigation_bar.dart';
import 'package:foodeca_ui/models/food_model.dart';
import 'package:foodeca_ui/my_order_screen.dart';
import 'package:foodeca_ui/rounded_icon_button.dart';
import 'package:foodeca_ui/theme.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home-screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 60,
          elevation: 0,
          leading: IconButton(
            splashRadius: 20,
            icon: Icon(
              Icons.list_rounded,
              size: 24,
              color: CustomColors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            RoundedIconButton(
              icon: Icons.person_2_outlined,
              edgeInsets: const EdgeInsets.only(right: 20),
              size: 22,
              radius: 6,
              bgColor: CustomColors.black,
              iconColor: Theme.of(context).primaryColor,
              onTap: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What would",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "You",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: " like to order?",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ])),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Search food',
                      hintStyle: Theme.of(context).textTheme.displaySmall,
                      filled: true,
                      fillColor: const Color(0xFFF3F2F2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 22,
                        color: CustomColors.black,
                      ),
                    ),
                  ),
                ),
                _Foods(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}

class _Foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, right: 10),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .78,
        shrinkWrap: true,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        children: List.generate(
          foods.length,
          (index) => GestureDetector(
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: foods[index]["color"],
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      foods[index]["image"],
                    ),
                  )),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin:
                        const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).primaryColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            foods[index]["name"],
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          Text(
                            foods[index]["price"],
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            onTap: () => Navigator.pushNamed(context, MyOrderScreen.routeName),
          ),
        ),
      ),
    );
  }
}
