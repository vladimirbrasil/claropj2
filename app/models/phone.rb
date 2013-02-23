# == Schema Information
#
# Table name: phones
#
#  id         :integer          not null, primary key
#  number     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Phone < ActiveRecord::Base
  attr_accessible :number, :user_id
  has_many :expenses, dependent: :destroy

  validates :number, presence: 		true, 
  									 uniqueness: 	true

end
