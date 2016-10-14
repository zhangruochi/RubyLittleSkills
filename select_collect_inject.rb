a = [1,2,3,4,5,6]

c = a.select {|element| element % 2 == 0 }.collect {|element| element.to_s}
p c


d = a.inject([]) do |result, element| 
    if element % 2 == 0
        result << element.to_s
    end
    result
end
p d

d = a.inject([]) do |result, element|  
  result << element.to_s if element % 2 == 0  
  result  
end 
p d