class Politician < ActiveRecord::Base
  has_many :poops


  def self.create_many_from_json(jsons)
    # create Politician objects and save them to database
    jsons.each do |politician_json|
      Politician.find_or_create_by({
      first_name:       politician_json["first_name"],
      last_name:        politician_json["last_name"],
      leadership_role:  politician_json["leadership_role"],
      chamber:          politician_json["chamber"],
      party:            politician_json["party"],
      state:            politician_json["state"],
      district:         politician_json["district"],
      title:            politician_json["title"],
      twitter_id:       politician_json["twitter_id"],
      facebook_id:      politician_json["facebook_id"],
      email:            politician_json["email"],
      phone:            politician_json["phone"],
      contact_form_url: politician_json["contact_form_url"]
      })
    end
  end

  def full_name
    "#{title}. #{first_name} #{last_name}"
  end

  def twitter_url
    "http://twitter.com/#{twitter_id}"
  end

  def facebook_url
    "http://facebook.com/#{facebook_id}"
  end

  def self.random_from_party(party)
    self.where(party: party).sample
  end
end
