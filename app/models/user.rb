class User
  include Mongoid::Document
  field :username, type: String
  field :email, type: String
  field :dateofbirth, type: String
  
  has_many :ballots
end
