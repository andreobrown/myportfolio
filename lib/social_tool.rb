module SocialTool
    def self.twitter_search
        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = ENV.fetch("TWITER_CONSUMER_KEY")
            config.consumer_secret     = ENV.fetch("TWITER_CONSUMER_SECRET")
            config.access_token        = ENV.fetch("TWITER_ACCESS_TOKEN")
            config.access_token_secret = ENV.fetch("TWITER_ACCESS_SECRET")
        end

        begin
            client.search("#rails", result_type: 'recent').take(6).collect do |tweet|
                "#{tweet.user.screen_name}: #{tweet.text}"
            end
        rescue Exception => e
            return ["Error fetching tweets", e.message]
        end
    end
end