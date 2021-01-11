class Post < ApplicationRecord
  belongs_to :user
  has_many :images, :as => :imageable
  scope :published, -> { where('published_at >= ?', Time.now - Time.at(0)) }
end
