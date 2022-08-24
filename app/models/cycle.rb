class Cycle < ApplicationRecord
  belongs_to :user
  belongs_to :license
  belongs_to :brand
  belongs_to :model
  has_many :booking
end
