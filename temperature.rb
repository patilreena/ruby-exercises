require 'text-table'

class Celsius
  def initialize()
    @temperatures = []
    @days = ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"]
  end

  def start
    @days.each do |day|
      puts "Enter Temperature for : #{day}"
      temp = gets.chomp.to_i
      @temperatures.push({:day => day,:temp => temp})
  end

    show_temp_summary

end

  def show_temp_summary
    array = [["Day", "Temperature (C)", "Temperature (F)"]]
    @temperatures.each do |obj|
    array.push([obj[:day], obj[:temp], temp_fahr(obj[:temp])]);
  end

    puts array.to_table
  end

  def temp_fahr (temp)
    temp.to_i*1.8 + 32
  end

temp = Celsius.new()
temp.start()
end
