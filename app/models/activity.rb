class Activity < ActiveRecord::Base
  belongs_to :user
  
  validates :user,
            presence: true
  validates :posts,
            presence: true
  validates :duration,
            presence: true
end