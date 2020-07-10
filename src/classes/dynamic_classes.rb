# create a new class dynamically
MyClass = Class.new

# instantiate an object of type MyClass
my_class = MyClass.new


class Dog
end

# dynamically create a class that subclasses another
Staffy = Class.new(Dog)

# instantiate an object of type Staffy
lucky = Staffy.new
puts lucky.is_a?(Staffy) # true
puts lucky.is_a?(Dog)    # true


Duck = Class.new do
      def quack
        puts 'Quack!!'
      end
    end

# instantiate an object of type Duck
duck = Duck.new
duck.quack # 'Quack!!'
