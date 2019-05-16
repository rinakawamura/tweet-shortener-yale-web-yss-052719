def dictionary
  {
  "hello": 'hi',
  "to": '2',
  "two": '2',
  "too": '2'
  }
end

def word_substituter(tweet)
  words = tweet.split (" ")
  new_words = []
  words.each do |word|
    puts word
    if dictionary.keys.include?(word)
      puts dictionary[word]
      new_words << dictionary[word]
    else
      new_words << word
    end
  end
  puts new_words
  new_words.join(" ")
end

word_substituter("hello two you be")
