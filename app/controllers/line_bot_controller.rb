class LineBotController < ApplicationController
  protect_from_forgery except: [:callback]

  def callback
  end

  private

  def client
    @client ||= LINE::Bot::Client { |config| 
    config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
    config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end
end
