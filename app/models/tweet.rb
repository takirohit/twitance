# Stores all the information of a particular tweet
class Tweet
  include Mongoid::Document
  field :tweet_id, type: String  
  field :created_at, type: DateTime
  field :text, type: String         
  field :user_id, type: String       
  field :in_reply_to_status_id, type: String
  field :in_reply_to_user_id, type: String
  field :in_reply_to_screen_name, type: String
  field :hashtags, type: Array  # stores the hashtags in an array
  field :urls, type: Array      # same with urls
  field :mentions_id, type: Array   
  field :favorite_count, type: Integer
  field :retweet_count, type: Integer
  field :lang, type: String
  
  belongs_to :user  
end
