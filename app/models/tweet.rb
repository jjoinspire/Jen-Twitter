class Tweet < ActiveRecord::Base

    belongs_to :user
    
    validates :message, presence: true, length: {maximum: 140, too_long: "A tweet is only 140 characters max. Shorten it up!"}
end
