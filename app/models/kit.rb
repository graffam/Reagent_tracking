class Kit < ActiveRecord::Base
  has_many :listitems
  has_many :orders, through: :listitems
  has_many :machines, through: :mkcs
end
