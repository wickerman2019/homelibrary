class Book < ApplicationRecord
    validates :name, presence: true
  belongs_to :genre
end
