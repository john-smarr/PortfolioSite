//import 'dart:html';
import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:js_portfolio_flutter/pages/resume_page.dart';
import 'package:js_portfolio_flutter/pages/coding_experience_page.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: AnimatedHomeBackground(
        w: Column(
          children: [
            Container(
              height: 1 / 10 * MediaQuery.of(context).size.height,
              alignment: Alignment.topLeft,
              //child: const OpeningParagraph(),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.black,
              ),
            ),
            Container(
              height: 1 / 1.5 * MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              color: Colors.transparent,
              child: BookshelfDesign(),
            )
          ],
        ),
      ),
    );
  }
}

class OpeningParagraph extends StatelessWidget {
  const OpeningParagraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 12),
      child: RichText(
          text: const TextSpan(children: [
        TextSpan(
            text: 'Hello and welcome to John Smarr\'s portfolio site!',
            style: TextStyle(color: Colors.white, fontSize: 40))
      ])),
    );
  }
}

class QualificationWidget extends StatelessWidget {
  const QualificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: 'Current Job:',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'RobotoCondensed',
                fontSize: 30)));
  }
}

class BookshelfDesign extends StatefulWidget {
  const BookshelfDesign({super.key});

  @override
  State<BookshelfDesign> createState() => _BookshelfDesignState();
}

class _BookshelfDesignState extends State<BookshelfDesign> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: ResumeBookWidget(),
        ),
        CodingExperienceBookWidget()
      ],
    );
  }
}

class ResumeBookWidget extends StatelessWidget {
  ResumeBookWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResumePage()));
      },
      child: Image.asset(
        'assets/images/Resume_Rocket.png',
        //width: MediaQuery.of(context).size.width / 3,
      ),
      // decoration: BoxDecoration(
      //     color: Colors.blueGrey,
      //     borderRadius: BorderRadius.circular(20),
      //     border: Border.all(width: 4)),
      // alignment: Alignment.centerLeft,
      // height: MediaQuery.of(context).size.height,
      // width: 1 / 15 * MediaQuery.of(context).size.width,
      // child: Center(
      //   child: RotatedBox(
      //     quarterTurns: -1,
      //     child: Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15),
      //           color: Colors.blueAccent),
      //       alignment: Alignment.center,
      //       width: MediaQuery.of(context).size.width,
      //       height: 1 / 12 * MediaQuery.of(context).size.height,
      //       child: FittedBox(
      //         fit: BoxFit.contain,
      //         child: Text(
      //           'Resume',
      //           style: TextStyle(
      //               fontSize: 35,
      //               fontStyle: FontStyle.italic,
      //               color: hoverTextColor,
      //               letterSpacing: 3),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      //);
    );
  }
}

class CodingExperienceBookWidget extends StatelessWidget {
  const CodingExperienceBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CodingExperiencePage()));
      },
      child: Container(
        child: Image.asset('assets/images/Coding_Rocket.png'),
        // decoration: BoxDecoration(
        //     color: Colors.blueGrey,
        //     borderRadius: BorderRadius.circular(20),
        //     border: Border.all(width: 4)),
        // alignment: Alignment.centerLeft,
        // height: MediaQuery.of(context).size.height,
        // width: 1 / 15 * MediaQuery.of(context).size.width,
        // child: Center(
        //   child: RotatedBox(
        //     quarterTurns: -1,
        //     child: Container(
        //       decoration: BoxDecoration(
        //         color: Colors.purple,
        //         borderRadius: BorderRadius.circular(15),
        //       ),
        //       alignment: Alignment.center,
        //       width: MediaQuery.of(context).size.width,
        //       height: 1 / 12 * MediaQuery.of(context).size.height,
        //       child: FittedBox(
        //         fit: BoxFit.contain,
        //         child: const Text(
        //           'Coding Experience',
        //           style: TextStyle(
        //               fontSize: 30,
        //               fontStyle: FontStyle.italic,
        //               color: Colors.white,
        //               letterSpacing: 3),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

class AnimatedHomeBackground extends StatefulWidget {
  final Widget w;
  const AnimatedHomeBackground({super.key, required this.w});

  @override
  State<AnimatedHomeBackground> createState() => _AnimatedHomeBackgroundState();
}

class _AnimatedHomeBackgroundState extends State<AnimatedHomeBackground>
    with TickerProviderStateMixin {
  ParticleOptions particles = const ParticleOptions(
      baseColor: Colors.white,
      spawnOpacity: 0.0,
      opacityChangeRate: 0.25,
      minOpacity: 0.1,
      maxOpacity: 0.6,
      particleCount: 70,
      spawnMaxRadius: 15.0,
      spawnMaxSpeed: 10.0,
      spawnMinSpeed: 5.0,
      spawnMinRadius: 5.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: AnimatedBackground(
        behaviour: RandomParticleBehaviour(options: particles),
        vsync: this,
        child: widget.w,
      ),
    );
  }
}
