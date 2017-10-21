class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :notes
	has_many :permissions
    has_many :comments, dependent: :destroy

	def self.filter_user(note)
		where.not(id: note.permissions.map(&:user_id))
	end
end
