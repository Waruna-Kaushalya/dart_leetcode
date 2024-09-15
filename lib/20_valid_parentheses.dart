import 'dart:developer';

class Solution {
  static bool isValid(String s) {
    if (s == "") return false;
    List<String> strList = s.split('');

    if (strList.length % 2 != 0) return false;

    Map<String, String> validParenthesis = {
      "(": ")",
      "[": "]",
      "{": "}",
    };

    List marchedList = [];

    for (int i = 0; i < strList.length; i++) {
      if (validParenthesis.containsKey(strList[i])) {
        marchedList.add(strList[i]);
      } else {
        if (marchedList.isEmpty) return false;

        if (validParenthesis[marchedList.last] == strList[i]) {
          marchedList.removeLast();
          strList.remove(i);
        } else {
          return false;
        }
      }
    }

    if (marchedList.isEmpty) return true;
    return false;
  }
}

void main() {
  log(Solution.isValid("([}}])").toString(), name: "([}}]) false");
  log(Solution.isValid("[([]])").toString(), name: "[([]]) false");
  log(Solution.isValid("(){}}{").toString(), name: "(){}}{ false");
  log(Solution.isValid("){").toString(), name: "){ false");
  log(Solution.isValid("()").toString(), name: "() true");
  log(Solution.isValid("()[]{}").toString(), name: "()[]{} true");
  log(Solution.isValid("([])").toString(), name: "([]) true");
  log(Solution.isValid("(]").toString(), name: "(] false");
  log(Solution.isValid("").toString(), name: " false");
}
