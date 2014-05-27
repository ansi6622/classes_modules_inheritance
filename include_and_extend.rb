module Flying
  def fly
    p "I am flying"
  end
end
class Bird
  include Flying
  # extend Flying
end

bird = Bird.new
bird.fly
# Bird.fly



module M1
  def foo
    p "From m1"
  end
end

module M2
  def foo
    p "From m2"
  end
end

class S1
  def foo
    p "From s1"
  end
  include M2
  include M1
end

class S3 < S1
  # include M2
  # include M1
end

S3.new.foo