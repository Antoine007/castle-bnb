class Castle < ActiveRecord::Base
  belongs_to :user

  geocoded_by :address
  # at creation of castle, determine GPS from address and add lat and long
  after_validation :geocode, if: :address_changed?

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment :picture, :presence => true

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/


end


