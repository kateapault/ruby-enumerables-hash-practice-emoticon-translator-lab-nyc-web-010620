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
  
  meanings = dictionary.map { |emotion| [emotion[1][1], emotion[0]] }
  get_meaning = meanings.to_h

  {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
end


def get_japanese_emoticon(filepath, emoticon)
  #accepts two arguments, the YAML file path and the emoticon
  #calls on #load_library and gives it the argument of the file path
  #returns the Japanese equivalent of an English grinning (FAILED - 1)
  #returns the Japanese equivalent of an English happy (FAILED - 2)
  #returns the Japanese equivalent of an English sad (FAILED - 3)
  #returns an apology message if the argument is not a known emoticon (FAILED - 4)
  
  emoticons_dictionary = load_library(filepath)["get_emoticon"]

  if emoticons_dictionary.include?(emoticon)
    return emoticons_dictionary[emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(filepath,emoticon)
  #accepts two arguments, the YAML file path and the emoticon (FAILED - 5)
  #calls on #load_library and gives it the argument of the file path (FAILED - 6)
  #returns the English meaning of the Japanese emoticon (＾ｖ＾) (FAILED - 7)
  #returns the English meaning of the Japanese emoticon (￣ー￣) (FAILED - 8)
  #returns the English meaning of the Japanese emoticon (Ｔ▽Ｔ) (FAILED - 9)
  #returns an apology message if the argument is not a known emoticon 
  
  emoticons_dictionary = load_library(filepath)["get_meaning"]
  if emoticons_dictionary.include?(emoticon)
    return emoticons_dictionary[emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  
end