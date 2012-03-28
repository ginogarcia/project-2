class Loger
    attr_accessor :username, :password
    
    def initialize(attributes ={:username => "Enter your username", :password =>"Enter your password"})
        @username = attributes[:username]
        @password = attributes[:password]
    end
end