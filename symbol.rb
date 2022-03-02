# p :hello.length
# x = :hello.upcase
# # :hello = "haha" symbol不是變數
# p x 

# p "hello"[0] #純字串也可以用[]取字串
# p :hello[0] #symbol也可以用[]取自串

# cat = "hello"
# cat[4] = "k"
# p cat

# 5.times do
#     puts :hello.object_id
# end

# require "benchmark"
# loop_times = 100000000

# str = Benchmark.measure do
#     loop_times.times do
#         "hello" == "hello"
#     end
# end.total

# sym = Benchmark.measure do
#     loop_times.times do
#         :hello == :hello
#     end
# end.total

# puts "String: #{str}"
# puts "Symbol: #{sym}"

class Cat  
    attr_accessor :name
end

kitty = Cat.new
#kitty.name = "Pussy"
puts kitty.name