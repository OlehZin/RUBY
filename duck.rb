class Duck
    
    @@greeting = "Hello" #змінна класу

    def initialize(greeting)
        @greeting = greeting #instance змінна
    end

    def quack
        puts "#{@@greeting} #{@greeting}"
    end

    class << self
        
        attr_accessor :greeting

        def quack
            puts "#{@@greeting} #{@greeting}" #instance змінна класу
        end
    end

end

duck1 = Duck.new("quack quack")
duck1.quack

Duck.greeting = "class quack"
Duck.quack