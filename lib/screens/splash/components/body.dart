import 'package:figure_the_brand_mobileapp/components/default_button.dart';
import 'package:figure_the_brand_mobileapp/constants.dart';
import 'package:figure_the_brand_mobileapp/screens/sign-in/sign_in_screen.dart';
import 'package:figure_the_brand_mobileapp/screens/splash/components/splash_content.dart';
import 'package:figure_the_brand_mobileapp/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashPageData = [
    {
      'text1': ' ',
      'text2': 'Own your style...',
      'image': 'assets/images/figure.png',
    },
    {
      'text1': 'F I G U R E',
      'text2': '...Wear with confidence...',
      'image': 'assets/images/figure_twopiece.png',
    },
    {
      'text1': 'F I G U R E',
      'text2': '...Complement your FIGURE',
      'image': 'assets/images/tshirts_cargo.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashPageData.length,
                    itemBuilder: (context, index) => SplashContent(
                          image: splashPageData[index]['image'],
                          text1: splashPageData[index]['text1'],
                          text2: splashPageData[index]['text2'],
                        ))),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashPageData.length,
                          (index) => dotIndicator(index)),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    DefaultButton(
                        buttonText: 'CONTINUE',
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        }),
                    const Spacer()
                  ]),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer dotIndicator(int index) {
    return AnimatedContainer(
        margin: const EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20 : 6,
        decoration: BoxDecoration(
            color: currentPage == index ? mPrimaryColour : mSecondaryColour,
            borderRadius: BorderRadius.circular(3)),
        duration: animationDuration);
  }
}
