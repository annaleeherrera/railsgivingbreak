class Person < ActiveRecord::Base
    has_many :recipes
    mount_uploader :image, ImageUploader
end
