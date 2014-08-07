class Proposition
  include Mongoid::Document
  field :propid, type: Integer
  field :whatitmeans, type: String
  field :whatyouthink, type: String
  field :howtovote, type: String
  field :why, type: String
  field :date, type: String
  
  
  belongs_to :ballot
end
