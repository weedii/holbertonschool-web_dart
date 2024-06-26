import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (isPalindrome(s)) {
    return s;
  }

  int i = 0;
  while (i < s.length) {
    if (isPalindrome(s[i + 3])) {
      return s[i + 3];
    }
    continue;
  }

  return none;
}
