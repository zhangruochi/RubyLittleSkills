class Customer
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
    end
end

#@cust_id,@cust_name,@cust_addr  都是类的对象的实例变量
Customer.new(1,:zhang,"lixian").display_details
=begin
Customer id 1
Customer name zhang
Customer address lixian
=end



class Customer_2

   @cust_id=1
   @cust_name= :zhang
   @cust_addr= "lixian"
   
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
    end
end

#此时的变量都是类的实例变量  不能被对象访问 也不能被类的子类访问
Customer_2.new.display_details

=begin
   
Customer id 
Customer name 
Customer address 
   
=end
