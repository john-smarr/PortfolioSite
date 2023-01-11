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
          [CodeAccomplishment('Python Zigzag Conversion')]),
      Accomplishment('Python AddTwo', 'assets/images/PythonAddTwo.JPG',
          [CodeAccomplishment('Python Add Two')]),
      Accomplishment(
          'Python Merge Sorted Lists',
          'assets/images/PythonMergeTwoSortedLists.JPG',
          [CodeAccomplishment('Python Merge Sorted Lists')]),
      Accomplishment(
          'Python Climbing Stairs',
          'assets/images/PythonClimbingStairs.JPG',
          [CodeAccomplishment('Python Climbing Stairs')]),
      Accomplishment(
          'Python Validate Binary Search Tree',
          'assets/images/PythonValidateBinaryTree.JPG',
          [CodeAccomplishment('Python Validate Binary Search Tree')]),
      Accomplishment(
          'Python Binary Tree Traversal',
          'assets/images/PythonBinaryTreeTraversal.JPG',
          [CodeAccomplishment('Python Binary Tree Traversal')]),
    ];
  }

  String get getImagePath {
    notifyListeners();
    return imagePath;
  }
}
