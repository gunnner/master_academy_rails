class Post < ApplicationRecord
  belongs_to :user
  has_many :images, as: :imageable

  scope :published, -> { where.not(published_at: nil) }

  def publish
    update_attribute(:published_at, DateTime.now)
  end

  def unpublish
    update_attribute(:published_at, nil)
  end
end
