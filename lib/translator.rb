# require modules here
require "yaml"
d = {"angel"=>["O:)", "☜(⌒▽⌒)☞"], "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"], "bored"=>[":O", "(ΘεΘ;)"], "confused"=>["%)", "(゜.゜)"], "embarrased"=>[":$", "(#^.^#)"], "fish"=>["><>", ">゜))))彡"], "glasses"=>["8D", "(^0_0^)"], "grinning"=>["=D", "(￣ー￣)"], "happy"=>[":)", "(＾ｖ＾)"], "kiss"=>[":*", "(*^3^)/~☆"], "sad"=>[":'(", "(Ｔ▽Ｔ)"], "surprised"=>[":o", "o_O"], "wink"=>[";)", "(^_-)"]}

def load_library(filepath)
  # returns a hash
  # has two keys, 'get_meaning' and 'get_emoticon' (FAILED - 1)
  # the keys 'get_meaning' and 'get_emoticon' point to inner hashes 
  # the keys inside the 'get_meaning' hash are the Japanese emoticons 
  # the emoticon keys inside the 'get_meaning' hash point to their meanings 
  # the keys inside the 'get_emoticon' hash are the English emoticons 
  # the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents 
  
  dictionary = YAML.load_file(filepath)
  emoticons = dictionary.map { |emotion| emotion[1] }
  get_emoticon = emoticons.to_h
  

  {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
end

def get_japanese_emoticon
  dictionary = load_library
end

def get_english_meaning
  dictionary = load_library
end