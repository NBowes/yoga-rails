class Pose < ApplicationRecord
  belongs_to :user
  mount_uploader :image, PoseUploader
end
