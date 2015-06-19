class Booking < ActiveRecord::Base
  belongs_to :castle
  belongs_to :user
end
