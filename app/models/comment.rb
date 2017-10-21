class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :note

  validates_presence_of :content, length: { minium: 5 , maximum: 1000 }
end
