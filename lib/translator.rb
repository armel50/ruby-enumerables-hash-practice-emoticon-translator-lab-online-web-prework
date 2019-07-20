# require modules here
require "yaml"


def load_library(file)
  file = YAML.load(File.read("./lib/emoticons.yml"))
  hash = {}
   hash["get_meaning"]= {} 
   hash["get_emoticon"] = {}
  
  file.each do |key,val| 
    #p val[1]
    
      if !hash["get_meaning"][val[1]]
        hash["get_meaning"][val[1]] = key
       end
       
        if !hash["get_emoticon"][val[0]]
        hash["get_emoticon"][val[0]] = val[1]
       end
  end
           
  hash
  
end 


def get_japanese_emoticon(file,emoticons)
  load_library(file)
  # code goes here
end

def get_english_meaning(file, emoticons)
  load_library(file)
  # code goes here
end   
 