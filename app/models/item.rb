class Item < ApplicationRecord
  validates :prime_numbers, uniqueness: true
end
