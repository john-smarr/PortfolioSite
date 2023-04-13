import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'John Smarr',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Cloud Engineer / Software Developer',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Skills',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Languages',
                          style: TextStyle(
                              fontFamily: 'TiltPrism',
                              color: Colors.white,
                              fontSize:
                                  11 * MediaQuery.of(context).size.width / 375),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset('assets/images/JavaLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Java',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 20,
                                height: MediaQuery.of(context).size.height / 20,
                                child: Image.asset(
                                    'assets/images/PythonLogo.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Python',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child:
                                  Image.asset('assets/images/CSharpLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'C#',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 20,
                                height: MediaQuery.of(context).size.height / 20,
                                child:
                                    Image.asset('assets/images/CPlusLogo.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'C++',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset('assets/images/DartLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Dart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Cloud',
                          style: TextStyle(
                              fontFamily: 'TiltPrism',
                              color: Colors.white,
                              fontSize:
                                  11 * MediaQuery.of(context).size.width / 375),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset('assets/images/Ec2Logo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'EC2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 20,
                                height: MediaQuery.of(context).size.height / 20,
                                child:
                                    Image.asset('assets/images/RdsLogo.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'RDS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset('assets/images/IamLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'IAM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 20,
                                height: MediaQuery.of(context).size.height / 20,
                                child:
                                    Image.asset('assets/images/EksLogo.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'EKS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset(
                                  'assets/images/CloudwatchLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'CloudWatch',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Knowledge',
                        style: TextStyle(
                            fontFamily: 'TiltPrism',
                            color: Colors.white,
                            fontSize:
                                11 * MediaQuery.of(context).size.width / 375),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset('assets/images/LinuxPic.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Linux',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 20,
                                height: MediaQuery.of(context).size.height / 20,
                                child:
                                    Image.asset('assets/images/RdsLogo.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Hosting',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset('assets/images/IamLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'SQL',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 20,
                                height: MediaQuery.of(context).size.height / 20,
                                child:
                                    Image.asset('assets/images/EksLogo.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'EKS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                              child: Image.asset(
                                  'assets/images/CloudwatchLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Database Management',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6 *
                                      MediaQuery.of(context).size.width /
                                      375,
                                  fontFamily: 'StickNoBills'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Experience',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/MarsPic.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Cloud Engineer / Software Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Myndref',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Designed and implemented page layouts using Flutter and designed cloud architecture on AWS',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/JupiterPic.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'IT Intern',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Georgia Southwestern State University',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Resolved tickets for students and staff, Implemented physical servers and switches',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
