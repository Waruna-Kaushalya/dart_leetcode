import 'dart:developer';

class Solution {
  static String longestCommonPrefix(List<String> strs) {
    String result = "";
    for (int i = 0; i < strs[0].split('').length; i++) {
      String firstWord = strs[0];
      String prefix = firstWord.split('')[i];

      bool abd = true;

      for (int e = 0; e < strs.length; e++) {
        String a = strs[e];
        if (a.length - 1 < i) {
          abd = false;
          break;
        }
        String b = a.split('')[i];
        if (b != prefix) {
          return result;
        }
      }
      if (!abd) return result;
      result = result + prefix;
    }

    return result;
  }
}

void main() {
  log(
    Solution.longestCommonPrefix(["flower", "flow", "flight"]).toString(),
  );
  log(
    Solution.longestCommonPrefix(["dog", "racecar", "car"]).toString(),
  );

  log(
    Solution.longestCommonPrefix(["ab", "a"]).toString(),
  );
  log(
    Solution.longestCommonPrefix(["flower", "flower", "flower", "flower"])
        .toString(),
  );
}
