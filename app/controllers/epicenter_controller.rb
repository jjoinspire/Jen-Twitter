class EpicenterController < ApplicationController
  def feed
      #initialize array that holds tweets
      @following_tweets = []
      
      #put in tweets
      @tweets = Tweet.all
      
      #sort through tweets
      
      @tweets.each do |tweet|
          current_user.following.each do |f|
              if tweet.user.id == f
                  @following_tweets.push(tweet)
                  #pushed into above array
              end
          end
      end
      
  end

  def show_user
      @user = User.find(params[:id])
  end

  def now_following
      @user = User.find(params[:follow_id])
      
      current_user.following.push(params[:follow_id].to_i)
      
      current_user.save
  end

  def unfollow
  end
end
