class User
  include Mongoid::Document
  include Mongoid::Paperclip
  include ActiveModel::SecurePassword
  field :username, type: String
  field :email, type: String
  field :dateofbirth, type: String
  field :password_digest, type: String

  has_secure_password

 has_mongoid_attached_file :image
 validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  has_many :ballots
end


