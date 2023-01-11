import 'package:flutter/material.dart';
import 'package:js_portfolio_flutter/models/accomplishment_display.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var selected = 0;
var imgPath;

void main() => runApp(ProviderScope(child: const CodingExperiencePage()));

final imageProvider = StateNotifierProvider((ref) => imgPath);

class CodingExperiencePage extends StatelessWidget {
  const CodingExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    final accomplishments = Accomplishment.fetchAll();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white10,
          leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: const Icon(Icons.arrow_back_rounded))),
      backgroundColor: Colors.blueGrey,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ScrollableCodeSelector(),
          CodeDisplayWidget(
            index: selected,
          )
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
    var accomplishment = accomplishments.first;
    return Container(
      color: Colors.white60,
      height: MediaQuery.of(context).size.height,
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
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey)),
                  onPressed: () {
                    setState(() {
                      accomplishment = accomplishments[index];
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
                    print(accomplishments[index].getImagePath);
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

  String _SelectImage() {
    String imgPath = accomplishments[widget.index].getImagePath;
    setState(() {});
    return imgPath;
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      print('SET STATE IN CODEDISPLAYWIDGET');
    });
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Image.asset(_SelectImage()),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
