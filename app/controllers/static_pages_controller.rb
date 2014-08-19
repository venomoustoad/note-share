
class StaticPagesController < ApplicationController
  require 'twitter'
  
  def home
    #@client = Twitter::REST::Client.new do |config|
    #  config.consumer_key        = "qjy5mnbPO7aeDa24jAILZqF3C"
    #  config.consumer_secret     = "mBfuNNiW7JXb136DT3HfFRa4kdKnTqpD2GvLoSoDkk11qDRjBB"
    #  config.access_token        = "2695051303-UU1VB77zbIQE1BJMn8S91NUNZIo95xcLtVdkI6s"
    #  config.access_token_secret = "VBMfNIRfFWfKa05EoaDS5Yt89zHyLRaYGMVsVy6545U3H"
    #end
    #@tweets = Array.new
    #@client.sample do |object|
    #  @tweets << object.text if object.is_a?(Twitter::Tweet)
    #end
  end

  def help
  end

  def about
  end

  def contact
  end
  
  def privacy_policy
  end
end
