class Monthlydatum < ActiveRecord::Base
  attr_accessible :item_id, :value, :date
  belongs_to :item
end
