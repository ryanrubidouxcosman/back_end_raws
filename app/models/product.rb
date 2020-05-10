class Product < ApplicationRecord
  belongs_to :user, :raw
end
