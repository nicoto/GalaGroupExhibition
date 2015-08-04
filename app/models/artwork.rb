class Artwork < ActiveRecord::Base
  has_many :exhibition_artworks
  has_one :exhibition, through: :exhibition_artworks
  has_one :auction
  has_many :bids, through: :auctions
end
