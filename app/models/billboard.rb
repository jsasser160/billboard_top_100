class Billboard < ApplicationRecord
  has_many :artist
  
  validates :name, length: { minimum: 1 }
end
