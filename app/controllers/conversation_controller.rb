class ConversationsController < ApplicationController
  before_filter :authenticate_user!

  layout false

  def create
    if Conversation.between(params[:user_a_id],params[:user_b_id]).present?
      @conversation = Conversation.between(params[:user_a_id],params[:user_b_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    render json: { conversation_id: @conversation.id }
  end

  def show
    @conversation = Conversation.find(params[:id])
    @reciever = interlocutor(@conversation)
    @messages = @conversation.messages
    @message = Message.new
  end

  private
  def conversation_params
    params.permit(:user_a_id, :user_b_id)
  end

  def interlocutor(conversation)
    current_user == conversation.user_b ? conversation.user_a : conversation.user_b
  end
end
