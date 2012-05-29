require 'monthlydatum'

class Monthlytotal
  def initialize month
    @data = Monthlydatum.find(:all, :conditions => ["date >= ? and date <= ?", month.beginning_of_month, month.end_of_month])
  end

  def total_of item
    values = @data.map { |datum| datum.value if datum.item.name == item }
    values.compact.inject(0) { |x,y| x + y }
  end

  def total_of_estimate
    @data.inject(0) { |x,y| x + y.item.estimate }
  end

  def total_of_payment
    @data.inject(0) { |x,y| x + y.value }
  end
end
