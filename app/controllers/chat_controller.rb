class ChatController < WebsocketRails::BaseController
	def new_message
		conversation = Conversation.find(message[:conversation_id])

		if conversation && (current_user.id == conversation.user_a_id || current_user.id == conversation.user_b_id) && message[:body] != ""
			id = "up_box_#{message[:conversation_id]}"

			user_msg = UserMsg.create(message: message[:body], conversation_id: message[:conversation_id], user_id: current_user.id)

			WebsocketRails[id].trigger "broadcast", {name: current_user.email, body: message[:body], id: current_user.id }
		end
	end
end