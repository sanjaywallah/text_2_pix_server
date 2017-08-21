class Meme < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :text, presence: true
end
