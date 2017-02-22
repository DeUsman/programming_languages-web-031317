def reformat_languages(languages)
  # your code here
  new_hash = {}
languages.each do |style_keys, value_language_objs|
  value_language_objs.each do |language_key, attribute_obj|
    attribute_obj.each do |attribute_key, attribute_value|
     if (!new_hash[language_key])
       new_hash[language_key] = {}
     end
     if (!new_hash[language_key][attribute_key])
        new_hash[language_key][attribute_key] = attribute_value
     end
     if(!new_hash[language_key][:style])
       new_hash[language_key][:style] = []
     end
     #new_hash[language_key][:style] ||= []
     new_hash[language_key][:style].push(style_keys)
     end
 end
end
return new_hash
end


   
