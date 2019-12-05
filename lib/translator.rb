# require modules here
require "yaml"


def load_library
  YAML.load_file('./lib/emoticons.yml')
end

def get_japanese_emoticon
  dictionary = load_library
end

def get_english_meaning
  dictionary = load_library
end