class Category < ActiveRecord::Base
    mount_uploader :imagesrc, ImagesrcUploader
  
  has_many :recipes, :dependent => :destroy
  
end
