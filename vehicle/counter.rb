class Counter
  def add_one
    new_val = value + 1 
    File.open "./tmp/counter.txt", "w" do |counter_file|
      counter_file.write new_val
    end
  end

  def value
    File.open "./tmp/counter.txt", "r" do |counter_file|
      counter_file.each_line {|line| return line.to_i }
    end
  end
end