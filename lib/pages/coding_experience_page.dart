import 'package:flutter/material.dart';
import 'package:js_portfolio_flutter/models/accomplishment_display.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var selected = 0;
var imgPath;

void main() => runApp(const ProviderScope(child: CodingExperiencePage()));

final imageProvider = StateNotifierProvider((ref) => imgPath);
Color _professionalColor = Colors.grey;
Color _leetCodeColor = Colors.white;

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
          backgroundColor: const Color(0xff28112B),
          leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: const Icon(Icons.arrow_back_rounded))),
      backgroundColor: const Color(0xff28112B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            //implement choice of what code experience to view, real coding examples or leetcode
            color: const Color(0xff28112B),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: (() {
                      _professionalColor = Colors.white;
                      _leetCodeColor = Colors.grey;
                      setState(() {});
                    }),
                    child: Text(
                      'Professional',
                      style: TextStyle(color: _professionalColor, fontSize: 15),
                    )),
                TextButton(
                    onPressed: (() {
                      _leetCodeColor = Colors.white;
                      _professionalColor = Colors.grey;
                      setState(() {});
                    }),
                    child: Text(
                      'Leetcode',
                      style: TextStyle(color: _leetCodeColor, fontSize: 15),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                const ScrollableCodeSelector(),
                CodeDisplayWidget(
                  index: selected,
                )
              ],
            ),
          ),
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
      color: const Color(0xff28112B),
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
                    setState(() {
                      CodeDisplayWidget(
                        index: index,
                      );
                    });
                    selected = index;
                    //_ChangeAccomplishment(index);
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

class CodeDisplayWidget extends StatefulWidget {
  final int index;
  const CodeDisplayWidget({super.key, required this.index});

  @override
  State<CodeDisplayWidget> createState() => _CodeDisplayWidgetState();
}

class _CodeDisplayWidgetState extends State<CodeDisplayWidget> {
  final accomplishments = Accomplishment.fetchAll();

  String _selectImage() {
    String imgPath = accomplishments[widget.index].getImagePath;
    setState(() {});
    return imgPath;
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Image.asset(_selectImage()),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
