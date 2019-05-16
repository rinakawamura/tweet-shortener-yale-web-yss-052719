def dictionary
  {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => '@',
  "and" => '&'  
  }
end

def word_substituter(tweet)
  words = tweet.split (" ")
  new_words = []
  words.each do |word|
    if dictionary.keys.include?(word)
      new_words << dictionary[word]
    else
      new_words << word
    end
  end
  new_words.join(" ")
end
