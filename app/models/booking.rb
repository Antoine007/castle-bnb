class Booking < ActiveRecord::Base
  has_many :nights
  belongs_to :castle
  belongs_to :user
end
