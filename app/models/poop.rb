class Poop < ActiveRecord::Base
  belongs_to :politician
  belongs_to :issue
  has_one    :followup

  validates_presence_of :politician, :issue

  def minutes_ago
    min = ((Time.current - created_at) / 60).floor
    if min == 1
      "1 minute ago"
    else
      "#{min} minutes ago"
    end
  end
end
