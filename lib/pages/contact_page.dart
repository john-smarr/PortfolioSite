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
    throw 'Github url broken: $url';
  }
}

class AboutContactPage extends StatelessWidget {
  const AboutContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white10,
          leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: const Icon(Icons.arrow_back))),
      backgroundColor: Color.fromARGB(193, 164, 163, 243),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'Hello my name is John Smarr, I am a software developer with a  strong emphasis on cloud computing. If you need to contact me please check use any of the options below.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoCondensed',
                    fontSize: 20),
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
                  height: 100,
                  width: 100,
                  child: IconButton(
                      onPressed: _launchGitHubBrowser,
                      icon: Image.asset(
                        'assets/images/github-mark.png',
                      )),
                ),
                SizedBox(
                  height: 120,
                  width: 120,
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
                Text(
                  'john.smarr97@gmail.com',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'RobotoCondensed',
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
