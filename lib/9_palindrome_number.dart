import 'dart:developer';

class Solution {
  static bool isPalindrome(int x) {
    final list1 = x.toString().split('');

    for (var i = 0; i < list1.length; i++) {
      if (list1[i] != list1[list1.length - (i + 1)]) return false;
    }

    return true;
  }
}

void main() {
  log(
    Solution.isPalindrome(
      12124421,
    ).toString(),
    name: "true",
  );
}
