class MyClass < Object
  def foo(name)
    p "Hello from foo " + name
  end
end

class AnotherClass < MyClass
  def foo(name)
    super("Hello " + name)
    p "Hello from foo on another class "
  end
  def bar
    p "Hello from bar"
  end
end

# f = MyClass.new
# f.foo

a = AnotherClass.new
a.bar
a.foo("Mike")


class Foo
  def self.bar
  end
end

class Foo
  class << self
    # This is now a class method
    def bar
    end
  end
end

