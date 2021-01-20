class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates_uniqueness_of :user, scope: :group
  validates_presence_of :user, :group

  validates :status, presence: true


  enum status: [ :active, :unactive, :banned ], _default: 'unactive'

end
