class Raw < ApplicationRecord
  belongs_to :user
  has_many :products
end
