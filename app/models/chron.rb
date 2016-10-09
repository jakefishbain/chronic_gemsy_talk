require 'chronic'

class Chron < ActiveRecord::Base
  validates_presence_of :time

  def chronic_time
    self.time
  end

  def chronic_time=(time)
    self.time = Chronic.parse(time) if time
  end

end