class Bid < ActiveRecord::Base
  belongs_to :participant
  belongs_to :auction
end
