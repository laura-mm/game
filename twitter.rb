require "twitter"

twitter_api = Twitter::REST::Client.new do |config|
config.consumer_key = "5Wdc86yC1q6nF8AlGKrr0NTFR"
config.consumer_secret = "qW99kx8kqjpUCvXELsXftq6PhXxC2NdUjEsmhg4QjdVT7TOW7y"
config.access_token = "573937005-HU9KuNsDTox12IV7pQwbonMpR4jWCgmFM6kCGZk7"
config.access_token_secret = "QGDzRISOjHhsEwrlXOnVnmUmbufCTo11KBU16eWqj73fP"
end

client = Twitter::REST::Client.new do |config|
config.consumer_key = "5Wdc86yC1q6nF8AlGKrr0NTFR"
config.consumer_secret = "qW99kx8kqjpUCvXELsXftq6PhXxC2NdUjEsmhg4QjdVT7TOW7y"
config.access_token = "573937005-HU9KuNsDTox12IV7pQwbonMpR4jWCgmFM6kCGZk7"
config.access_token_secret = "QGDzRISOjHhsEwrlXOnVnmUmbufCTo11KBU16eWqj73fP"
end

client.update("rubys are red")
