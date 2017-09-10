class Permission < ApplicationRecord
  belongs_to :user
  belongs_to :note
  has_closure_tree dependent: :destroy
end
