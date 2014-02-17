class Annotation < ActiveRecord::Base
  validates :body, presence: true
  validates :body, length: { minimum: 5 }
  
  belongs_to :track
  belongs_to :user
end
