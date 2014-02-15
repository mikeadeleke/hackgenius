class Track < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 10 }
  
  has_many :annotations
end
