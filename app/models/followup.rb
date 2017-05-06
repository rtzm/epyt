class Followup < ActiveRecord::Base
  belongs_to :poop

  validates_presence_of :poop

  def prepare_notification(result)
    # called by TwilioService module
    # gather the information for this notification (phone number, email, etc)
    # set completed = true
    # pass this information to Twilio API
  end
end
