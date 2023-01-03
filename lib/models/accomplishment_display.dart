import 'package:flutter/foundation.dart';

import 'code_accomplishment.dart';

class Accomplishment extends ChangeNotifier {
  final String name;
  final String imagePath;
  final List<CodeAccomplishment> accomplishment;

  Accomplishment(this.name, this.imagePath, this.accomplishment);

  static List<Accomplishment> fetchAll() {
    return [
      Accomplishment('Python twoSum', 'assets/images/PythonTwoSum.JPG',
          [CodeAccomplishment('Python twoSum')]),
      Accomplishment(
          'Python Zigzag Conversion',
          'assets/images/PythonZigzagConversion.JPG',
          [CodeAccomplishment('Python Zigzag Conversion')])
    ];
  }

  String get getImagePath {
    notifyListeners();
    return imagePath;
  }
}
