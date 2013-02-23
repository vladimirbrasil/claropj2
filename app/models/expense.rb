# == Schema Information
#
# Table name: expenses
#
#  id         :integer          not null, primary key
#  data       :string(255)
#  value      :decimal(, )
#  phone      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expense < ActiveRecord::Base
  attr_accessible :data, :phone, :value
  belongs_to :phone
end
