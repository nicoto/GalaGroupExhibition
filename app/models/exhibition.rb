class Exhibition < ActiveRecord::Base
  has_many :exhibition_artworks
  has_many :artworks, through: :exhibition_artworks
  has_many :auctions
end
