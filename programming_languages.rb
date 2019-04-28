require "pry"



def reformat_languages(languages)
  # your code here
  array_one = [:ruby, :javascript, :python, :java]
  array_two = [:clojure, :javascript, :erlang, :scala]
  new_hash = {}
  languages_by_style.each do |tier_one, tier_two|
    languages_by_style[tier_one].each do |tier_two, tier_three|
      new_hash[tier_two] = tier_three # if you do collect it creates arrays which you don't want!
    end
  end
  another_hash = {}
  yet_another_hash = {}
  new_hash.each do |tier_one, tier_two|
    if array_one.include?(tier_one)      
      # another_hash[tier_one] = {:style => [:oo]}
      new_hash[tier_one] = new_hash[tier_one].merge(:style => [:oo])
    end
    if array_two.include?(tier_one)
      new_hash[tier_one] = new_hash[tier_one].merge(:style => [:functional]) {|key, v1, v2| v1 + v2}
    end
  end  
end
