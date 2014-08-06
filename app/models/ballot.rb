class Ballot
  include Mongoid::Document
  field :state, type: String
  field :city, type: String
  field :date, type: String

  
  has_many :propositions
  has_many :candidates
  
end
