class Castle < ActiveRecord::Base
  geocoded_by :address
  # at creation of castle, determine GPS from address and add lat and long
  after_validation :geocode, if: :address_changed?

end


