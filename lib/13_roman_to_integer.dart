import 'dart:developer';

class Solution {
  static int romanToInt(String s) {
    Map<String, int> valuesMap = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    };

    Map<String, int> coupledValues = {
      "IV": 4,
      "IX": 9,
      "XL": 40,
      "XC": 90,
      "CD": 400,
      "CM": 900
    };

    int total = 0;

    for (int i = 0; i < s.split('').length; i++) {
      String coupledVal = "";
      if (i + 1 < s.split('').length) {
        coupledVal = s.split('')[i] + s.split('')[i + 1];
      }

      if (coupledVal != "" && coupledValues.containsKey(coupledVal)) {
        int val = coupledValues[coupledVal]!;
        total = total + val;
        i++;
      } else {
        if (valuesMap.containsKey(s.split('')[i])) {
          int val2 = valuesMap[s.split('')[i]]!;
          total = total + val2;
        }
      }
    }

    return total;
  }
}

void main() {
  log(Solution.romanToInt("III").toString());
  log(Solution.romanToInt("LVIII").toString());
  log(Solution.romanToInt("MCMXCIV").toString());
  log(Solution.romanToInt("XXVII").toString());
}
