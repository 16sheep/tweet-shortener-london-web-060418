def dictionary 
  dictionary_hash = {"hi" => ["hello"], 
  "2" => ["to", "two", "too"],
  "4" => ["for", "four"],
  "b" => ["be"],
  "@" => ["at"],
  "&" => ["and"]
  }
end

def word_substituter(tweet)
  dic = dictionary.keys
  newtweet = tweet.split
  values = dictionary.values
  
  print "This is tweet #{newtweet}"
  print "This is keys #{dic}"
  print "This is values #{values}"
  
  
  
  
  for word in newtweet
  
    lasttweet = []
    for x in values
      for y in x
        y == word ? lasttweet.push(dic[values.index(x)]) : lasttweet.push(word)
      end
    end
  end

  lasttweet = lasttweet.join(" ")
  lasttweet
  
end