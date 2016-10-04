#attr_reader 及attr_accessor主要是用来设置或读取类中的属性值
#属性之针对实例变量即:带@的变量

class Hello
  attr_reader :msg
  
  def initialize
    @msg = "Hello, World"
  end
  
  def test
    print @msg
  end

end

h = Hello.new
puts h.msg
h.test