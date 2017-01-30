module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end

    client.search("#coding", result_type: 'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end

  def self.instagram_search
    data = HTTParty.get("https://api.instagram.com/v1/users/self/media/recent/?access_token=#{ENV.fetch('ACCESS_TOKEN')}")
    data['data'].collect do |pic|
      pics = []
      pics.push("#{pic['images']['low_resolution']['url']}", "#{pic['images']['low_resolution']['width']}")
    end
  end
end