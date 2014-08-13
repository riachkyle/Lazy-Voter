class Comment
  include Mongoid::Document
  field :text, type: String

  belongs_to :proposition
  belongs_to :user
  belongs_to :ballot
end
