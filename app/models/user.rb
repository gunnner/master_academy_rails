class User < ApplicationRecord
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  has_many :posts, dependent: :destroy
  has_many :images, as: :imageable
  has_many :memberships
  has_many :groups, through: :memberships

  validates :personal_data, uniqueness: true, presence: true
  validates :email, uniqueness: true, format: { with: VALID_EMAIL }, presence: true
  validates :password, length: { minimum: 8 }, presence: true

  scope :adults, -> { where('birthday < ?', 18.years.ago) }

  def full_name
    "User name is: #{last_name} #{first_name}"
  end

  def personal_data=(value)
    value = JSON.parse(value) if value.is_a?(String)
    super(value)
  rescue JSON::ParserError
    super(value)
  end
end
