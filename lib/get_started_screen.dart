import 'package:flutter/material.dart';
import 'package:foodeca_ui/home_screen.dart';
import 'package:foodeca_ui/theme.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                alignment: Alignment(0, -.65),
                image: AssetImage("assets/images/splash.png"),
              ),
              color: Theme.of(context).primaryColor),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Text(
                  "FOODECA",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text(
                  "Choose your preference",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 2),
                child: Text(
                  "What's your",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 35, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "Favourite food?",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 35),
              ),
              Container(
                height: 50,
                width: 350,
                margin: const EdgeInsets.only(top: 20, bottom: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(CustomColors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                  child: Text(
                    "Get started",
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
