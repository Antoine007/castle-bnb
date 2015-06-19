class Night < ActiveRecord::Base
  belongs_to :castle
  belongs_to :booking
end
