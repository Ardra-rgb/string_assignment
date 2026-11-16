
# PROBLEM 1: PALINDROME CHECK

def palindrome?(text)

  cleaned_text = text.downcase.gsub(/[^a-zA-Z0-9]/, "")

  reversed_text = cleaned_text.reverse

  cleaned_text == reversed_text

end


# PROBLEM 2: CHARACTER FREQUENCY COUNT

def character_frequency(text)

  frequency = {}

  text.each_char do |char|

    if frequency.key?(char)
      frequency[char] += 1
    else
      frequency[char] = 1
    end

  end

  return frequency

end


# PROBLEM 3: LONGEST SUBSTRING WITHOUT REPEATING CHARACTERS

def longest_substring(text)

  last_seen = {}

  start = 0
  longest_substring = ""
  longest_length = 0

  text.each_char.with_index do |char, i|

    if last_seen.key?(char) && last_seen[char] >= start
      start = last_seen[char] + 1
    end

    last_seen[char] = i

    current_length = i - start + 1

    if current_length > longest_length
      longest_length = current_length
      longest_substring = text[start..i]
    end

  end

  return longest_substring, longest_length

end


# PROBLEM 4: STRING COMPRESSION

def string_compression(text)

  compressed = ""
  count = 1

  (0...text.length).each do |i|

    if i + 1 < text.length && text[i] == text[i + 1]

      count += 1

    else

      compressed << text[i]

      if count > 1
        compressed << count.to_s
      end

      count = 1

    end

  end

  if compressed.length > text.length
    return text
  else
    return compressed
  end

end


# PROBLEM 5: LONGEST PALINDROMIC SUBSTRING

def longest_palindrome(text)

  return "" if text.empty?

  longest = ""

  (0...text.length).each do |i|

    # Check odd-length palindrome
    left = i
    right = i

    while left >= 0 && right < text.length && text[left] == text[right]

      left -= 1
      right += 1

    end

    odd_palindrome = text[(left + 1)...right]

    if odd_palindrome.length > longest.length
      longest = odd_palindrome
    end


    # Check even-length palindrome
    left = i
    right = i + 1

    while left >= 0 && right < text.length && text[left] == text[right]

      left -= 1
      right += 1

    end

    even_palindrome = text[(left + 1)...right]

    if even_palindrome.length > longest.length
      longest = even_palindrome
    end

  end

  return longest

end


# MAIN MENU

loop do

  puts "\n========== STRING OPERATIONS =========="
  puts "1. Check Palindrome"
  puts "2. Character Frequency Count"
  puts "3. Longest Substring Without Repeating Characters"
  puts "4. String Compression"
  puts "5. Longest Palindromic Substring"
  puts "6. Exit"
  puts "======================================="

  print "Enter your choice: "
  choice = gets.chomp

  case choice

  when "1"

    print "Enter a word or sentence: "
    user_input = gets.chomp

    if palindrome?(user_input)
      puts "It is a palindrome!"
    else
      puts "It is not a palindrome!"
    end

  when "2"

    print "Enter a string: "
    user_input = gets.chomp

    result = character_frequency(user_input)

    puts "\nCharacter Frequency:"

    result.each do |char, count|
      puts "#{char}: #{count}"
    end
  
  when "3"

    print "Enter a string: "
    user_input = gets.chomp

    substring, length = longest_substring(user_input)

    puts "Longest substring: #{substring}"
    puts "Length: #{length}"

  when "4"

    print "Enter a string: "
    user_input = gets.chomp

    result = string_compression(user_input)

    puts "Compressed string: #{result}"
   
  when "5"

    print "Enter a string: "
    user_input = gets.chomp

    result = longest_palindrome(user_input)

    puts "Longest Palindromic Substring: #{result}"
    puts "Length: #{result.length}"

  when "6"

    puts "Exiting the program..."
    break

  else

    puts "Invalid choice! Please try again."

  end

end
