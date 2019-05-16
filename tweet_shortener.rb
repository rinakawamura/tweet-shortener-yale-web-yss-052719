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
  keys = dictionary.keys
  capitalized_keys = keys.collect {|key| key.capitalize}
    if keys.include?(word) || capitalized_keys.include?(word)
      new_words << dictionary[word.downcase]
    else
      new_words << word
    end
  end
  new_words.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    if word_substituter(tweet).length > 140
      "#{word_substituter(tweet)[0..137]}...""
    else
      word_substituter(tweet)
  else
    tweet
  end
