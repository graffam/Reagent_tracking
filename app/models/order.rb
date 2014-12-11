class Order < ActiveRecord::Base
  belongs_to :user
  has_many :listitems
  has_many :kits, through: :listitems
end
