require 'date'

class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 50 }
    validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
    validates :events, presence: true
    validates_time :events, between: ['8:00am', '8:00pm'],
                                :message => " to be set are only between 8AM-8PM in the evening. No events allowed outside these hours."
    validate :event_is_on_or_before_current_date
    private
    def event_is_on_or_before_current_date
        if events.strftime('%m/%d/%Y %I:%M%p') < Time.now.strftime('%m/%d/%Y %I:%M%p')
            errors.add(:events, "You cannot create an event that already past the current time.")
        end
    end


  end
