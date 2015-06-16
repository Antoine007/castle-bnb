class Castle < ActiveRecord::Base
  geocoded_by :address
  # at creation of castle, determine GPS and add lat and long
  after_validation :geocode, if: :address_changed?

  # Create class to identify the nearby castles
  # Class method
  def self.nearest_castles
    Castle.near(@address, 9, order: :distance)

  end

end


