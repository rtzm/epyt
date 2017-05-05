class Followup < ActiveRecord::Base
  belongs_to :poop

  validates_presence_of :poop
end
