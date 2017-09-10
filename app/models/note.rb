class Note < ApplicationRecord
  belongs_to :user
  has_many :permissions
end
