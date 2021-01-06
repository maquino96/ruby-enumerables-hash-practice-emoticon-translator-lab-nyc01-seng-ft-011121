# require modules here

require "yaml"

<<<<<<< HEAD
def load_library(path)
  yaml_hash = YAML.load_file(path)
  lib_hash = {}
  
  yaml_hash.each do |o_key, o_val| 
    lib_hash[o_key] = { :english => o_val[0],
                        :japanese => o_val[1]}
  end
  lib_hash
=======
test_hash = YAML.load_file('lib/emoticons.yml')

yaml_hash = { 
  "angel"=>["O:)", "☜(⌒▽⌒)☞"], 
  "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"], 
  "bored"=>[":O", "(ΘεΘ;)"], 
  "confused"=>["%)", "(゜.゜)"], 
  "embarrassed"=>[":$", "(#^.^#)"], 
  "fish"=>["><>", ">゜))))彡"], 
  "glasses"=>["8D", "(^0_0^)"], 
  "grinning"=>["=D", "(￣ー￣)"], 
  "happy"=>[":)", "(＾ｖ＾)"], 
  "kiss"=>[":*", "(*^3^)/~☆"], 
  "sad"=>[":'(", "(Ｔ▽Ｔ)"], 
  "surprised"=>[":o", "o_O"], 
  "wink"=>[";)", "(^_-)"]
    }



puts test_hash

def load_library
  # code goes here
  
  
>>>>>>> ade6037226802bf80b6687fba8bc894385f425a1
end



def get_japanese_emoticon(path, e_emote)
  lib = load_library(path)
  result = ""
  
  lib.each do |o_key, o_val|
    if lib[o_key][:english] == e_emote
      result = lib[o_key][:japanese]
    end
  end
  if result.length == 0 
    return "Sorry, that emoticon was not found"
  end
  result
end


def get_english_meaning(path, j_emote)
  lib = load_library(path)
  result = ""
  
  lib.each do |o_key, o_val|
    if lib[o_key][:japanese] == j_emote
      result = o_key.to_s
    end
  end
  if result.length == 0 
    return "Sorry, that emoticon was not found"
  end
  result
end