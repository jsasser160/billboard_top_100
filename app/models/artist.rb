class Artist < ApplicationRecord
  belongs_to :billboard
  has_many :song, dependent: :destory
  
  validates :name, length: {minimum: 1}
  validates :bio, length: { maximum: 500}
end


