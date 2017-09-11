class HomesController < ApplicationController
	skip_before_action :authenticate_user!
	def landing
		redirect_to notes_path if user_signed_in?
	end
end