class Proposition
  include Mongoid::Document
  field :propid, type: Integer
  field :whatitmeans, type: String
  field :howtovote, type: String
  field :why, type: String
  field :howtovoteno, type: String
  field :whyno, type: String
  field :date, type: String
  
 
  belongs_to :ballot
  has_many :comments
  has_many :yesnos
  
end
