class Booking < ActiveRecord::Base
  belongs_to :castle_id
  belongs_to :renter_id
end
