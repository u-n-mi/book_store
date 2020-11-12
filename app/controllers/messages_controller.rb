class MessagesController < ApplicationController
    def new
        @message = Message.new
        byebug
    end

    def create
    @message = Message.new(message_params)
    @message.user = current_user
    end

    private

    def message_params
        params.require(:message).permit(:email, :phone, :book_id, :description)
      end
  end