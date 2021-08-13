import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:airadio/utils/ai.util.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(
                LinearGradient(
                    colors: [AIColors.primaryColor1, AIColors.primaryColor2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              )
              .make(),
          AppBar(
            title: "AI RADIO"
                .text
                .xl4
                .bold
                .white
                .make()
                .shimmer(primaryColor: Vx.red600, secondaryColor: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          ).h(100.0).p16(),
        ],
      ),
    );
  }
}
