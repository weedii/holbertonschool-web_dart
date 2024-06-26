String longestUniqueSubstring(String str) {
  Map<String, int> checkStr = {};

  str.split("").forEach((char) => {
        if (checkStr.containsKey(char))
          {checkStr[char] = checkStr[char]! + 1}
        else
          {checkStr[char] = 1}
      });

  return checkStr.keys.join("");
}