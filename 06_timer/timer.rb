class Timer
  attr_accessor :seconds, :minutes, :hours
  attr_writer :minutes, :hours

  def initialize 
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds=(input)
    while input >= 60
      input = input - 60
      @minutes = @minutes + 1
      if @minutes >= 60
        @minutes -= 60
        @hours += 1
      end
    end
    @seconds = input
  end
  
  def time_string
    @hour_disp = "%02d" % @hours
    @min_disp = "%02d" % @minutes
    @sec_disp = "%02d" % @seconds
    return "#{@hour_disp}:#{@min_disp}:#{@sec_disp}"
  end
end
