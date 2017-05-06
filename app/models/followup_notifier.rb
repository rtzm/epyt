module FollowupNotifier
  def self.check_new_votes
    # check if any Votes in database correspond to existing incomplete Followups
    # for each one, check if
  end

  def self.send_new_notifications
    # check if any incomplete Followups correspond to recently received vote information
    # for each one:
    # send vote results to Followup (followup.prepare_notification(vote_result))
    # then, if Followup has a phone number, send that prepared notification to TwilioService.text(prepared_notification)
    # and if Followup has an email, send email (how?) to
  end
end
