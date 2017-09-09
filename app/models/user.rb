class User < ApplicationRecord
  has_attached_file :profile_image, default_url: '', preserve_files: true
  validates_attachment_content_type :profile_image, content_type: /\Aimage\/.*\z/

#   before_save :set_image_file_name
#
#   private
#
#   def set_image_file_name
#     self.image_file_name = "profile_image-#{Time.current.to_i}.jpg" if self.image_file_name == 'data'
#   end
end
