class Yesno
  include Mongoid::Document
  field :choice, type: String


  belongs_to :user
  belongs_to :ballot
  belongs_to :proposition
end
