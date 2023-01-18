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
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.black,
              ),
            ),
            Container(
              height: 1 / 1.5 * MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              color: Colors.transparent,
              child: const OrientationDesign(),
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

class OrientationDesign extends StatefulWidget {
  const OrientationDesign({super.key});

  @override
  State<OrientationDesign> createState() => _OrientationDesignState();
}

class _OrientationDesignState extends State<OrientationDesign> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 700) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 4),
                child: const ResumeBookWidget()),
          ),
          ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 3),
              child: const CodingExperienceBookWidget())
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 4,
                    maxHeight: MediaQuery.of(context).size.height / 4),
                child: const ResumeBookWidget()),
          ),
          ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 3,
                  maxHeight: MediaQuery.of(context).size.height / 4),
              child: const CodingExperienceBookWidget())
        ],
      );
    }
  }
}

class ResumeBookWidget extends StatelessWidget {
  const ResumeBookWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ResumePage()));
      },
      child: Image.asset(
        'assets/images/Resume_Rocket.png',
        //width: MediaQuery.of(context).size.width / 3,
      ),
    );
  }
}

class CodingExperienceBookWidget extends StatelessWidget {
  const CodingExperienceBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CodingExperiencePage()));
      },
      child: Image.asset('assets/images/Coding_Rocket.png'),
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
  ParticleOptions particles = ParticleOptions(
      image: Image.asset('assets/images/star.png'),
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
