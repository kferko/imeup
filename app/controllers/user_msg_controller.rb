class UserMsgController < ApplicationController
  before_filter :authenticate_user!

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @user_msg = @conversation.user_msg.build(user_msg_params)
    @user_msg.user_id = current_user.id
    @user_msg.save!

    @path = conversation_path(@conversation)
  end

  private

  def user_msg_params
    params.require(:user_msg).permit(:message)
  end

end
