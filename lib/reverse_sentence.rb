# A method to reverse the words in a sentence, in place.
# Time complexity: O(n), where n is the length of the string. The number of times the loops will run for both helper methods is O(n) because
# the loop will run through each character in the string before stopping, so the time it takes to run depends on how many
# characters there are.
# Space complexity: O(1) because all the variables used are constant and nothing new is being created.

def reverse_words(my_words)
  if my_words == nil
    return nil
  end
  first_index = 0
  last_index = 0
  string_last = my_words.length - 1
  my_words.each_char do |char|
    if char == " "
      break
    end
    last_index += 1
  end
  if (last_index - first_index) > 1
    i = first_index
    j = last_index - 1
    while i < j
      temp = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = temp
      i += 1
      j -= 1
    end
  end
  until last_index >= string_last
    first_index = last_index + 1
    last_index += 1
    my_words[first_index..string_last].each_char do |char|
      if char == " "
        break
      end
      last_index += 1
    end
    if (last_index - first_index) > 1
      i = first_index
      j = last_index - 1
      while i < j
        temp = my_words[i]
        my_words[i] = my_words[j]
        my_words[j] = temp
        i += 1
        j -= 1
      end
    end
  end
  return my_words
end

def string_reverse(my_string)
  if my_string == nil
    return nil
  elsif my_string.length < 2
    return my_string
  end
  i = 0
  j = my_string.length - 1
  while i < j
    temp = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = temp
    i += 1
    j -= 1
  end
  return my_string
end

def reverse_sentence(my_sentence)
  reverse_words(my_sentence)
  string_reverse(my_sentence)
end
