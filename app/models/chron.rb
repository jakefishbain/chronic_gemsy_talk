require 'chronic'

class Chron < ActiveRecord::Base
  validates_presence_of :time

  @options = ['thursday', 'november', 'summer', 'friday 13:00', 'mon 2:35', '4pm', '10 to 8', '10 past 2', 'half past 2', '6 in the morning', 'friday 1pm', 'sat 7 in the evening', 'yesterday', 'today', 'tomorrow', 'last week', 'next week', 'this tuesday', 'next month', 'last winter', 'this morning', 'last night', 'this second', 'yesterday at 4:00', 'last friday at 20:00', 'last week tuesday', 'tomorrow at 6:45pm', 'afternoon yesterday', 'thursday last week', '3 years ago', 'a year ago', '5 months before now', '7 hours ago', '7 days from now', '1 week hence', 'in 3 hours', '1 year ago tomorrow', '3 months ago saturday at 5:00 pm', '7 hours before tomorrow at noon', '3rd wednesday in november', '3rd month next year', '3rd thursday this september', '4th day last week', 'fourteenth of june 2010 at eleven oclock in the evening', 'may seventh 97 at three in the morning']

  def chronic_time
    self.time
  end

  def chronic_time=(time)
    self.time = Chronic.parse(time) if time
  end

  def self.option 
    return @options.sample
  end

end