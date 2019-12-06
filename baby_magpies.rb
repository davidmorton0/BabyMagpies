require "test/unit/assertions"
include Test::Unit::Assertions

def child(bird1, bird2)
  (0..bird1.length - 1).map { |x| bird1[x] != bird2[x] ? 1 : 0 }.sum.between?(1, 2)
end

def grandchild(bird1, bird2)
  (0..bird1.length - 1).map { |x| bird1[x] != bird2[x] ? 1 : 0 }.sum.between?(0, bird1.length == 1 ? 0 : 4)
end



m1 = "BWBWBW"
m2 = "BWBWBB"
m3 = "WWWWBB"

assert_equal(child(m1, m2), true)
assert_equal(child(m2, m3), true)

assert_equal(grandchild(m1, m3), true)

assert_equal(child(m1,m3), false)
