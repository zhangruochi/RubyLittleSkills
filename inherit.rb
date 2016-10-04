#send方法很强大，可以调用任何方法，包括私有方法，使用public_send方法将能够尊重方法接受者的隐私权

class A
    @@name="Anleb"
     
    def ask 
        puts @@name
    end
    private :ask

end
a=A.new
#a.ask  报错
a.send(:ask)

 
class B < A
     
end
b=B.new
b.send(:ask)

#故私有方法也可以继承
