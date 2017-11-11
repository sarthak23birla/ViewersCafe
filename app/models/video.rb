class Video < ApplicationRecord
  has_and_belongs_to_many :tags ,class_name: "Tag"
  belongs_to :uploader,class_name: "User"
  has_many :likes
  has_many :dislikes
  has_many :comments
  has_many :views
  mount_uploaders :preview_images,PreviewImagesUploader
  mount_uploader :movie, VideoUploader
end