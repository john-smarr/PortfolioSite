import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchGitHubBrowser() async {
  var url = Uri.parse("https://github.com/john-smarr");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Github url broken: $url';
  }
}

_launchLinkedInBrowser() async {
  var url = Uri.parse("https://www.linkedin.com/in/john-smarr/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'LinkedIn url broken: $url';
  }
}

Shader linearGradient = LinearGradient(
  colors: [Colors.greenAccent, Colors.blueGrey],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
).createShader(Rect.fromLTWH(0.0, 0.0, 0.0, 100.0));

class AboutContactPage extends StatelessWidget {
  const AboutContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(0, 187, 43, 43),
              Colors.blueGrey,
            ]),
      ),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white10,
            leading: IconButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                icon: const Icon(Icons.arrow_back))),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.transparent),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Text(
                    'Hello my name is John Smarr, I am a software developer with a  strong emphasis on cloud computing. If you need to contact me please use any of the options below.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoCondensed',
                        fontSize: 7 * MediaQuery.of(context).size.width / 280),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.height / 5,
                    child: IconButton(
                        onPressed: _launchGitHubBrowser,
                        icon: Image.asset(
                          'assets/images/GitHub_Logo_White.png',
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.height / 5,
                    child: IconButton(
                        onPressed: _launchLinkedInBrowser,
                        icon: Image.asset(
                          'assets/images/LI-Logo.png',
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) {
                      return linearGradient;
                    },
                    child: Text(
                      'john.smarr97@gmail.com',
                      style: TextStyle(
                        fontSize: 8 * MediaQuery.of(context).size.width / 200,
                        foreground: Paint()..shader = linearGradient,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
