class Place < ApplicationRecord
  has_many :features  
  has_many :reviews 
  has_many :users, though :reviews
end
