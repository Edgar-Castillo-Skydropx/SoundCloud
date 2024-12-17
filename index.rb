def min_window(s, t)
  t.each_char do |val|
      return "" unless s.include?(val)
  end
  "hi"
end

puts min_window("AHFBSSDC","ABZ")