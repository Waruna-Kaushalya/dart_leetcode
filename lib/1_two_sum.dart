import 'dart:developer';

class Solution {
  static List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (int e = nums.length - 1; e > i; e--) {
        if (nums[i] + nums[e] == target) {
          return [i, e];
        }
      }
    }
    return [];
  }
}

void main() {
  log(Solution.twoSum([0, 2, 3, 4, 2, 3, 4, 2], 6).toString());
}
