class Recipe < ActiveRecord::Base
  mount_uploader :imagesrc, ImagesrcUploader
  
  letsrate_rateable "recipe"
  
  
  belongs_to :user
  belongs_to :category
  validates :name,
            presence: true
  validates :user,
            presence: true
  validates :description,
            presence: true
  validates :instructions,
            presence: true
end
