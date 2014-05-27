module MyMethods
  def self.foo(bar)
    p bar
  end

  private
  def self.private_method
    p "I am private"
  end

  class << self
    def another_method
      p 'another method'
    end

    private
    def private_method
      p "I am private"
    end
  end

end

bar = "Welcome!"

MyMethods.foo(bar)
MyMethods.another_method
# MyMethods.private_method


module Foo
  module Bar
    def self.baz
      p "Hello from baz"
    end
  end
end
#
Foo::Bar.baz


module Foo::Bar2
  def self.baz2
    p "Hello from baz2"
  end
end

Foo::Bar2.baz2
