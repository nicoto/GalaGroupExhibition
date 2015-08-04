class Auction < ActiveRecord::Base
  has_many :bids
  belongs_to :artwork
  has_many :participants, through: :bids
end
