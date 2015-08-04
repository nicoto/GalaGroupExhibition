class Exhibitionartwork < ActiveRecord::Base
  belongs_to :exhibition
  belongs_to :artwork
end
