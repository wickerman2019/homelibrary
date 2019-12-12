class Book < ApplicationRecord
  has_many :readers
    validates :name, presence: true
  belongs_to :genre
end
