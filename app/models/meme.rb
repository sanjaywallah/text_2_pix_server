class Meme < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :text, :img_url, presence: true
end
