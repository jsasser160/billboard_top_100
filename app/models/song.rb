class Song < ApplicationRecord
  belongs_to :artist

  validates :title, length: {minimum: 1}
end
