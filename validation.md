
# Validation and Test Results

This document contains the test cases used to validate all five string manipulation problems.

## 1. Palindrome Check

| Test Input | Expected Output |
|---|---|
| racecar | true |
| hello | false |
| Madam | true |
| A man, a plan, a canal: Panama | true |
| 12321 | true |
| a | true |
| Empty string | true |
| !!! | true |

## 2. Character Frequency Count

| Test Input | Expected Output |
|---|---|
| apple | a: 1, p: 2, l: 1, e: 1 |
| programming | p: 1, r: 2, o: 1, g: 2, a: 1, m: 2, i: 1, n: 1 |
| AaA | A: 2, a: 1 |
| aabb | a: 2, b: 2 |
| hello world | h: 1, e: 1, l: 3, o: 2, space: 1, w: 1, r: 1, d: 1 |
| Empty string | Empty hash |

## 3. Longest Substring Without Repeating Characters

| Test Input | Expected Substring | Length |
|---|---|---|
| abcabcbb | abc | 3 |
| bbbbb | b | 1 |
| pwwkew | wke | 3 |
| abba | ab | 2 |
| abcdef | abcdef | 6 |
| Empty string | Empty string | 0 |
| aA | aA | 2 |
| a b | a b | 3 |

## 4. String Compression

| Test Input | Expected Output |
|---|---|
| aaabbcccc | a3b2c4 |
| aabb | a2b2 |
| abcdef | abcdef |
| aabcccccaaa | a2bc5a3 |
| aaaa | a4 |
| a | a |
| Empty string | Empty string |

## 5. Longest Palindromic Substring

| Test Input | Expected Output | Length |
|---|---|---|
| babad | bab | 3 |
| cbbd | bb | 2 |
| racecar | racecar | 7 |
| forgeeksskeegfor | geeksskeeg | 10 |
| a | a | 1 |
| abc | a | 1 |
| Empty string | Empty string | 0 |
| A man, a plan, a canal: Panama | a | 1 |

## Edge Cases Identified

1. Empty input strings.
2. Strings containing only one character.
3. Strings containing all identical characters.
4. Strings containing uppercase and lowercase characters.
5. Strings containing spaces and punctuation.
6. Strings containing duplicate characters.
7. Multiple possible answers with the same maximum length.
8. Inputs where compression does not reduce the string length.
9. Inputs where compression produces a longer string.

## Actual Results

All test cases should be executed using the Ruby program.

Record the actual results after running each test case and compare them with the expected outputs.

Status: Pending execution of validation tests.
