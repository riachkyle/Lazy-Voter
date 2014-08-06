class Candidate
  include Mongoid::Document
  field :name, type: String
  field :basic_views, type: String
  field :party, type: String
  field :what_you_think, type: String
  
  belongs_to :ballot
end
