class User < ApplicationRecord
  has_many :posts
  has_many :images, :as => :imageable

  validates :password, :length => { :minimum => 8 }
  validates :email, :username, :uniqueness => true
  validates :username, :email, :password, :presence => true

  scope :old, -> { where('birthday > ?', 18.years.from_now) }

  def full_name
    "User fullname is: #{last_name} #{first_name}"
  end
end
