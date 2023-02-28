class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_channel"
  end

  def receive(data)
    ActionCable.server.broadcast('messages_channel', 'Hola prueba')
  end
end
