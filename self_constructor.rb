class Test
    def fuck
        puts "fuck1"
        Test.fuck_2
        #self.fuck_2  #会报错 因为该方法是类的实例方法  self 指 Test 类的实例对象
    end

    def self.fuck_2  #此 self 代指Test 类
        puts "fuck_2"
    end

    fuck_2

    def fuck_3
        puts "fuck_3"
        fuck
    end

end 

a = Test.new
a.fuck


=begin
output:
    fuck_2 类的构建时就打印
    fuck1
    fuck_2

=end

puts ""
a.fuck_3