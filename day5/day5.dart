/**
 * 1/9/2022 - Day 5 - 100 Days of Code
 * Problem: https://leetcode.com/problems/two-sum/
 * Twitter: @G4MR 
 * via dart lang run from terminal: `dart day5.dart`
 */
void main() {
  print(twoSum([3, 2, 4], 6));
}

List twoSum(List<int> nums, int target) {
  for(int i = 0; i < nums.length; i++) {
    for(int e = 0; e < nums.length; e++) {
      if(i == e) continue;
      if(nums[i] + nums[e] == target) {
        return [i, e];
      }
    }
  }
  return [];
}