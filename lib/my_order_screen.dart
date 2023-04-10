import 'package:flutter/material.dart';
import 'package:foodeca_ui/rounded_icon_button.dart';
import 'package:foodeca_ui/theme.dart';
import 'package:swipe_to/swipe_to.dart';

class MyOrderScreen extends StatelessWidget {
  static const routeName = "my-order";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 60,
            elevation: 0,
            leading: IconButton(
              splashRadius: 20,
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            centerTitle: true,
            title: Text(
              "My order",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).primaryColor, fontSize: 20),
            ),
            actions: [
              IconButton(
                splashRadius: 20,
                icon: Icon(
                  Icons.more_vert_rounded,
                  size: 20,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FoodCard(),
                _Details(),
                const SizedBox(height: 20),
              ],
            ),
          )),
    );
  }
}

class _FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "Carbonara",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 20),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff74787d).withOpacity(.5),
                  ),
                  child: Center(
                      child: Text("1/4",
                          maxLines: 1,
                          style: Theme.of(context).textTheme.bodySmall)),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("240 g",
                        maxLines: 1,
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Text("\$16",
                      maxLines: 1,
                      style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Image.asset(
                "assets/images/o1.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var averageRateCard = SizedBox(
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color(0xff6545fe),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 7),
              child: Text(
                "Average rate",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 12, color: Theme.of(context).primaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 7),
              child: Text(
                "4.65",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 20, color: Theme.of(context).primaryColor),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/chart.png",
                  fit: BoxFit.contain,
                ))
          ],
        ),
      ),
    );
    var deliveryTimeCard = SizedBox(
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color(0xfffffefe),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                child: RoundedIconButton(
                    height: 30,
                    width: 30,
                    size: 22,
                    radius: 20,
                    icon: Icons.timer_outlined,
                    iconColor: const Color(0xffcecfce),
                    bgColor: const Color(0xffcecfce).withOpacity(.5),
                    onTap: () {})),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 7),
              child: Text(
                "Delivery Time",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 2,
                left: 7,
              ),
              child: Text(
                "12:45",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 7),
          ],
        ),
      ),
    );
    var leftSideCards = Column(
      children: [
        Row(
          children: [
            Expanded(
              child: averageRateCard,
            ),
            Expanded(
              child: deliveryTimeCard,
            ),
          ],
        )
      ],
    );
    var rightSideRowCard = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: const Color(0xffe7eefe),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: RoundedIconButton(
                radius: 20,
                icon: Icons.credit_card,
                iconColor: Theme.of(context).primaryColor,
                bgColor: const Color(0xffbbd1fe),
                onTap: () {}),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              "\$258",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: CustomColors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text("Total",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.displaySmall),
          ),
          const SizedBox(height: 35),
          Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                      child: SwipeTo(
                        rightSwipeWidget: Container(),
                        offsetDx: 4,
                        animationDuration: const Duration(milliseconds: 500),
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 18,
                          backgroundImage:
                              AssetImage("assets/images/swipe.png"),
                        ),
                        onRightSwipe: () {},
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      "Pay now",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    var deliverAddressCard = SizedBox(
      width: double.infinity,
      child: Card(
        color: const Color(0xff303538),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Delivery Address",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "6391 Elgin St.Celina,\nDelaware 10299",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  "Details",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(right: 20),
                child: Text(
                  "see more",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      leftSideCards,
                      deliverAddressCard,
                    ],
                  ),
                ),
                Expanded(
                  child: rightSideRowCard,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = const Color(0xff63aa65)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;
    //draw arc
    canvas.drawArc(
        const Offset(0, 0) & const Size(70, 70),
        10, //radians
        3, //radians
        false,
        paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
