class Ballot
  include Mongoid::Document
  field :state, type: String
  field :city, type: String
  field :date, type: String
 

  belongs_to :user
  has_many :propositions
  has_many :comments
  has_many :yesnos

  has_many :candidates

  
end
