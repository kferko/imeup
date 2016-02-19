module UserMsgHelper

  def self_or_other(message)
    message.user == current_user ? "self" : "other"
  end

  def message_interlocutor(message)
    message.user == message.conversation.user_a ? message.conversation.user_a : message.conversation.user_b
  end
end
