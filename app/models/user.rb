class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :notes
	has_many :permissions

	def self.filter_user(note)
		where.not(id: note.permissions.map(&:user_id))
	end
end
