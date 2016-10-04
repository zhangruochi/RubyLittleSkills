#1.写顶层代码的时候，ruby自动提供了一个默认的self，它是Object类的实例对象，main
#2.通过特殊的规定（就是规定的。参考ruby for rails中文版153页），顶层方法是Object类的私有实例方法
#3.私有实例，意味着，不能显示调用，不能指明接受者是谁

def test(value)
    a = value
    puts a
end

test 10         #相当于在 main 对象里面隐式调用 test 方法    
#self.test 10    #private method `test' called for main  报错 因为 test 是私有方法  不能显式调用


class TestClass
    def test2
        test 10
    end
end

a = TestClass.new
a.test2        # 而每个对象所属的类都是Object的后代，因此每个对象都可以调用顶层方法，只是不能显示调用。  


#然而   setter
def a= (value)
    a = value
    puts a
end    

self.a= 10       #是 public 方法


