class Comment < ApplicationRecord
  belongs_to :meme
  validates :text, presence: true
end
