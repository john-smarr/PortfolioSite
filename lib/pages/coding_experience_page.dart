import 'package:flutter/material.dart';
import 'package:js_portfolio_flutter/models/accomplishment_display.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var selected = 0;
var imgPath;

void main() => runApp(const ProviderScope(child: CodingExperiencePage()));

final imageProvider = StateNotifierProvider((ref) => imgPath);
Color _professionalColor = Colors.grey;
Color _leetCodeColor = Colors.black;
Widget _selectedWidget = const LeetCodeDisplayWidget();

class CodingExperiencePage extends StatefulWidget {
  const CodingExperiencePage({super.key});

  @override
  State<CodingExperiencePage> createState() => _CodingExperiencePageState();
}

class _CodingExperiencePageState extends State<CodingExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white10,
          leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: const Icon(Icons.arrow_back_rounded))),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            //implement choice of what code experience to view, real coding examples or leetcode
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: (() {
                      _professionalColor = Colors.black;
                      _leetCodeColor = Colors.grey;
                      _selectedWidget = const ProfessionalExperienceWidget();
                      setState(() {});
                    }),
                    child: Text(
                      'Professional',
                      style: TextStyle(
                          color: _professionalColor,
                          fontSize:
                              10 * MediaQuery.of(context).size.width / 375,
                          fontFamily: 'StickNoBills'),
                    )),
                TextButton(
                    onPressed: (() {
                      _leetCodeColor = Colors.black;
                      _professionalColor = Colors.grey;
                      _selectedWidget = const LeetCodeDisplayWidget();
                      setState(() {});
                    }),
                    child: Text(
                      'Leetcode',
                      style: TextStyle(
                          color: _leetCodeColor,
                          fontSize:
                              10 * MediaQuery.of(context).size.width / 375,
                          fontFamily: 'StickNoBills'),
                    )),
              ],
            ),
          ),
          _selectedWidget
        ],
      ),
    );
  }
}

class ScrollableCodeSelector extends StatefulWidget {
  const ScrollableCodeSelector({super.key});

  @override
  State<ScrollableCodeSelector> createState() => _ScrollableCodeSelectorState();
}

class _ScrollableCodeSelectorState extends State<ScrollableCodeSelector> {
  final accomplishmentsLength = Accomplishment.fetchAll().length;
  final accomplishments = Accomplishment.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      //height: MediaQuery.of(context).size.height,
      width: 1 / 3 * MediaQuery.of(context).size.width,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: accomplishmentsLength,
              (BuildContext context, int index) {
                return TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff2B2D42))),
                  onPressed: () {
                    selected = index;
                    setState(() {});
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const CodingExperiencePage()));
                  },
                  child: Container(
                    height: 1 / 9 * MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    color: Colors.white10,
                    child: Text(
                      accomplishments[index].name,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class LeetCodeDisplayWidget extends StatefulWidget {
  const LeetCodeDisplayWidget({super.key});

  @override
  State<LeetCodeDisplayWidget> createState() => _LeetCodeDisplayWidgetState();
}

class _LeetCodeDisplayWidgetState extends State<LeetCodeDisplayWidget> {
  final accomplishments = Accomplishment.fetchAll();

  String _selectImage() {
    String imgPath = accomplishments[selected].getImagePath;
    setState(() {});
    return imgPath;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const ScrollableCodeSelector(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Image.asset(_selectImage()),
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfessionalExperienceWidget extends StatefulWidget {
  const ProfessionalExperienceWidget({super.key});

  @override
  State<ProfessionalExperienceWidget> createState() =>
      _ProfessionalExperienceWidgetState();
}

class _ProfessionalExperienceWidgetState
    extends State<ProfessionalExperienceWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Text(
              'Under Construction',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Icon(
              Icons.construction,
              color: Colors.orange,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}
