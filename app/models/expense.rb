class Expense < ActiveRecord::Base
  attr_accessible :data, :phone, :value
  belongs_to :phone
end
