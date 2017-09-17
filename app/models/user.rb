class User < ApplicationRecord
  has_attached_file :profile_image, default_url: '', preserve_files: true
  validates_attachment_content_type :profile_image, content_type: /\Aimage\/.*\z/
end
