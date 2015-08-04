class User < ActiveRecord::Base
  has_one :user_code
  has_many :participants # You could use a self-referential polymorphic join here
end
