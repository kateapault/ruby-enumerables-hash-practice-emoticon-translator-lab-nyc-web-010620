# require modules here
require "yaml"


def load_library
  dictionary = YAML.load_file('---/lib/emoticons.yml')
  puts dictionary
  dictionary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library