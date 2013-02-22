class Phone < ActiveRecord::Base
  attr_accessible :email, :number, :user
  has_many :expenses, dependent: :destroy
end
