class HomeController < ApplicationController
  def index
  	if !current_user
  		redirect_to root_path
  	end
  end
  # def open_chat
  # 	@conversation = Conversation.find_by(user_a_id: current_user.id, user_b_id: params[:data_rip])
  # end
end
