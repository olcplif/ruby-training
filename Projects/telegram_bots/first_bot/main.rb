# coding: UTF-8
require 'telegram/bot'

TOKEN = '891522345:AAHYdqQGEZWvC1xY8fiklXYvyMf8WGhGvkM'

ANSWERS = ["Yes","No"]

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start' , '/start start'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Hello, my dear, #{message.from.first_name}")
    else
      bot.api.send_message(
        chat_id: message.chat.id,
        text: ANSWERS.sample)
    end
  end
end
