class Forum < ActiveRecord::Base
  belongs_to :user
  has_many :topics, :dependent => :destroy
  is_impressionable
end
