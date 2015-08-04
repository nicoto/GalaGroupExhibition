class Participant < ActiveRecord::Base
  # You could use a self-referential polymorphic join here
  belongs_to :user
  has_many :bids
  has_many :auctions, through: :bids
end
