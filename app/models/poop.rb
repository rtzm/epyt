class Poop < ActiveRecord::Base
  belongs_to :politician
  belongs_to :issue

  validates_presence_of :politician, :issue
end
