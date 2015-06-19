class Night < ActiveRecord::Base
  belongs_to :booking

  belongs_to :castle
end
