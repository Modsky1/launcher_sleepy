class HomeController < ApplicationController
  def index
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
      config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
    end
    @tweets = @client.search("#launcher_sleepy -rt")
  end

  def about
  end

  def inspiration
  end
end
