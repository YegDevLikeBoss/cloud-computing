require 'set'

def longest_items(array)
    Set.new(array[0..-1].map {|item| item[0]}).map {|letter| array.select {|word| letter == word[0]}.max}.map {|item| [item, item.length]}
end

puts longest_items(["a", "aa", "aaaaa", "b", "bbb", "bbbbbbb"])