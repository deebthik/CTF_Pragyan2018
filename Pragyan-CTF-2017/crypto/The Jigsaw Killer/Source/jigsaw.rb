#!/usr/ruby
class String
  def ^( other )
    b1 = self.unpack("U*")
    b2 = other.unpack("U*")
    longest = [b1.length,b2.length].max
    b1 = [0]*(longest-b1.length) + b1
    b2 = [0]*(longest-b2.length) + b2
    b1.zip(b2).map{ |a,b| a^b }.pack("U*")
  end
end

f= File.open("demo3", "r")
g = File.open("clue", "w")
a = IO.read("demo3")
l = a.length - 1
l2 = "p"
for i in 7..l-7
  a[i] = a[i] + a[i-7]
  a[i] = a[i] + a[i+7]
end
g << a
