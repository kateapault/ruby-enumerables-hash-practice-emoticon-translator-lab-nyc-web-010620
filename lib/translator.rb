# require modules here
require "yaml"


def load_library(filepath)
  # returns a hash
  # has two keys, 'get_meaning' and 'get_emoticon' (FAILED - 1)
  # the keys 'get_meaning' and 'get_emoticon' point to inner hashes 
  # the keys inside the 'get_meaning' hash are the Japanese emoticons 
  # the emoticon keys inside the 'get_meaning' hash point to their meanings 
  # the keys inside the 'get_emoticon' hash are the English emoticons 
  # the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents 
  
  dictionary = YAML.load_file(filepath)
  meaning = dictionary.map 
  
end

def get_japanese_emoticon
  dictionary = load_library
end

def get_english_meaning
  dictionary = load_library
end