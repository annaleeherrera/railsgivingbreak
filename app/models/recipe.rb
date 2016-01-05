class Recipe < ActiveRecord::Base
  belongs_to :person
  mount_uploader :image, ImageUploader
end
