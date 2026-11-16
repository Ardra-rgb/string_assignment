
# String Manipulation Assignment

## Project Description

This project contains five string manipulation problems implemented using Ruby as part of my Software Engineering Internship assignment.

The program uses a menu-driven approach, allowing users to choose which string operation they want to perform.

## Programming Language

- Ruby

## Prerequisites

- Ruby installed on your system.
- Terminal or command-line interface.
- Git (for version control).

## Problems Implemented

### 1. Palindrome Check
Checks whether a given string is a palindrome.

- Ignores uppercase and lowercase differences.
- Ignores spaces and punctuation.
- Considers letters and digits.

### 2. Character Frequency Count
Counts the occurrences of each character.

- Treats uppercase and lowercase separately.
- Includes spaces and punctuation.
- Preserves the order of first occurrence.

### 3. Longest Substring Without Repeating Characters
Finds the longest continuous substring without repeated characters.

- Returns the substring and its length.
- Returns the first substring when multiple results have the same maximum length.
- Treats uppercase and lowercase as different characters.

### 4. String Compression
Compresses consecutive repeated characters.

- Counts only consecutive occurrences.
- Does not add counts for single characters.
- Returns the original string if compression produces a longer string.
- Returns the compressed string when lengths are equal.

### 5. Longest Palindromic Substring
Finds the longest continuous substring that is a palindrome.

- Uses case-sensitive comparison.
- Treats spaces and punctuation as ordinary characters.
- Returns the first palindrome when multiple longest palindromes exist.

## How to Run

1. Clone the repository:

   ```bash
   git clone YOUR_REPOSITORY_URL
   ```

2. Navigate to the project directory:

   ```bash
   cd string_assignment
   ```

3. Run the Ruby program:

   ```bash
   ruby string_problems.rb
   ```

4. Select an operation from the displayed menu.

## Sample Inputs and Outputs

### Palindrome Check

Input:
```text
Madam
```

Output:
```text
It is a palindrome!
```

### Character Frequency Count

Input:
```text
apple
```

Output:
```text
a: 1
p: 2
l: 1
e: 1
```

### Longest Substring Without Repeating Characters

Input:
```text
abcabcbb
```

Output:
```text
Longest substring: abc
Length: 3
```

### String Compression

Input:
```text
aaabbcccc
```

Output:
```text
Compressed string: a3b2c4
```

### Longest Palindromic Substring

Input:
```text
babad
```

Output:
```text
Longest Palindromic Substring: bab
Length: 3
```

## Project Files

- `string_problems.rb` - Source code containing all five implementations and the menu.
- `README.md` - Project documentation.
- `validation.md` - Test cases, expected outputs, actual results and edge cases.
