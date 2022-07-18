def substrings(string, dictionary)
  hash = {}
  string = string.downcase
  dictionary.each do |entry|
    words = string.scan(entry).length
    hash[entry] = words unless words == 0
  end
  return hash
end


# my_phrase = "below"
my_phrase = "Howdy partner, sit down! How's it going?"
my_dictionary = ["below","down","go","going","horn","how","howdy","it","i",
  "low","own","part","partner","sit"]

puts substrings(my_phrase, my_dictionary)