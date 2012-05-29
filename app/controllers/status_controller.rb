class StatusController < ApplicationController
  def months
    @items = Item.all
    @monthlydata = Monthlydatum.find(:all, :conditions => ["date >= ? and date <= ?", Time.now.beginning_of_year, Time.now.end_of_year])
  end

  def years
  end
end
