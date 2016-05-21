class Search
  attr_accessor :lakeSt, :brighton, :nicollet, :fifthSt, :hour, :time, :inputday, :day, :bestestStore



  ALL_URLS = []

  def initialize(hour)
    
    @lakeSt = [[100, 2, 3, 4, 5, 7, 8, 9, 8, 7, 7, 7, 7, 5, 3, 100, 100], [100, 2, 3, 4, 5, 5, 5, 6, 7, 8, 8, 8, 8, 7, 5, 2, 100], [100, 1, 2, 3, 4, 4, 4, 4, 5, 6, 7, 7, 6, 6, 4, 2, 100], [100, 2, 3, 4, 5, 5, 5, 5, 6, 7, 7, 7, 6, 6, 5, 3, 100], [100, 1, 2, 3, 4, 5, 6, 6, 6, 7, 8, 8, 8, 7, 5, 3, 100], [100, 1, 3, 4, 5, 6, 6, 6, 7, 8, 9, 8, 7, 7, 6, 3, 100], [100, 3, 4, 5, 6, 8, 9, 10, 9, 8, 7, 7, 7, 6, 4, 3, 100]]
    @brighton = [[100, 1, 3, 5, 7, 8, 8, 8, 7, 7, 7, 7, 6, 5, 4, 2, 100], [100, 1, 2, 3, 4, 5, 5, 5, 5, 6, 7, 7, 6, 5, 3, 2, 100], [100, 1, 1, 2, 3, 4, 4, 4, 4, 4, 4, 5, 4, 4, 3, 2, 100], [100, 1, 1, 2, 3, 4, 4, 5, 5, 5, 5, 6, 6, 5, 4, 2, 100], [100, 2, 2, 3, 3, 4, 4, 4, 4, 4, 5, 6, 6, 5, 4, 2, 100], [100, 1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 6, 6, 5, 4, 2, 100], [100, 1, 3, 5, 7, 9, 9, 8, 7, 7, 9, 10, 9, 7, 5, 3, 1]]
    @nicollet = [[100, 100, 100, 2, 4, 6, 5, 4, 4, 5, 4, 2, 2, 1, 100, 100, 100], [1, 2, 3, 5, 6, 7, 8, 8, 7, 6, 6, 6, 5, 4, 2, 100, 100], [1, 2, 3, 5, 7, 8, 8, 7, 6, 6, 6, 6, 5, 4, 2, 100, 100], [1, 2, 4, 6, 7, 9, 9, 8, 7, 7, 7, 6, 4, 2, 1, 100, 100], [1, 2, 3, 5, 7, 8, 9, 9, 8, 7, 7, 6, 5, 4, 3, 100, 100], [1, 2, 4, 6, 8, 10, 10, 9, 9, 9, 8, 7, 7, 6, 4, 100, 100], [100, 2, 4, 6, 8, 9, 9, 8, 7, 6, 6, 7, 6, 4, 2, 100, 100]]
    @fifthSt = [[100, 1, 2, 3, 4, 5, 6, 7, 7, 7, 7, 7, 7, 7, 5, 2, 100], [1, 1, 2, 3, 4, 5, 5, 5, 5, 6, 8, 9, 6, 4, 4, 2, 100], [1, 1, 2, 2, 3, 3, 3, 3, 5, 6, 7, 6, 5, 5, 5, 3, 100], [1, 1, 2, 3, 4, 4, 4, 4, 5, 5, 6, 7, 7, 7, 5, 3, 100], [1, 1, 2, 3, 3, 4, 4, 4, 4, 5, 6, 7, 7, 6, 5, 3, 100], [1, 1, 1, 2, 3, 4, 5, 5, 6, 6, 6, 6, 5, 4, 4, 5, 100], [100, 1, 1, 3, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 5, 3, 100]]
    @hour = hour

    time = 0


    if hour == "7AM" 
     time = 0
    elsif hour == "8AM" 
     time = 1
  elsif hour == "9AM" 
     time = 2
  elsif hour == "10AM" 
    time = 3
  elsif hour == "11AM" 
    time = 4
  elsif hour == "12PM" 
    time = 5
  elsif hour == "1PM" 
    time = 6
  elsif hour == "2PM" 
    time = 7
  elsif hour == "3PM" 
    time = 8
  elsif hour == "4PM" 
    time = 9
  elsif hour == "5PM" 
    time = 10
  elsif hour == "6PM" 
    time = 11
  elsif hour == "7PM" 
    time = 12
  elsif hour == "8PM"
    time = 13
  elsif hour == "9PM"
    time = 14
  elsif hour == "10PM"
    time = 15
  elsif hour == "11PM"
    time = 16
  end


  lakeStBusy = lakeSt[0][time]
  brightonBusy = brighton[0][time]
  nicolletBusy = nicollet[0][time]
  fifthStBusy = fifthSt[0][time]

  timeArray = [lakeStBusy, brightonBusy, nicolletBusy, fifthStBusy]

  bestStore = timeArray.min
  minValue = timeArray[3]

  for i in 0..3
    if timeArray[i] < minValue
      minValue = timeArray[i]
    end
  end

  if minValue == lakeStBusy
    @bestestStore = "lakeSt"
  elsif minValue == brightonBusy
    @bestestStore = "brighton"
  elsif minValue == nicolletBusy
    @bestestStore = "nicollet"
  else
    @bestestStore = "fifthSt"
  end
  # if day == "Sunday" [then]
  #   day = 0
  # elsif _ == "Monday" [then]
  #   day = 1
  # elsif _ == "Tuesday" [then]
  #   day = 2
  # elsif _ == "Wednesday" [then]
  #   day = 3
  # elsif _ == "Thursday" [then]
  #   day = 4
  # elsif _ == "Friday" [then]
  #   day = 5
  # elsif _ == "Saturday" [then]
  #   day = 6
  # end






    ALL_URLS << self
  end

  def self.all
    ALL_NAMES
  end
end
