class Expense < ActiveRecord::Base
  attr_accessible :data, :phone, :value
end
