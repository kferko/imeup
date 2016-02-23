class HomeController < ApplicationController
  def index
  	if !current_user
  		redirect_to root_path
  	end
  end
  def up_box
  	@open = true
  	@conversation = Conversation.find_by(user_a_id: current_user.id, user_b_id: params[:id])

  	if !@conversation
  		@conversation = Conversation.find_by(user_a_id: params[:id], user_b_id: current_user.id)

  		if !@conversation
  			@open = false
  		end
  	end
  end
end
