class Issue < ActiveRecord::Base
  has_many :poops

  def self.create_many_from_json(jsons)
    # create Issue objects and save them to database
    jsons.each do |issue_json|
      Issue.find_or_create_by({
        legislative_day:  issue_json["legislative_day"].to_date,
        bill_number:      issue_json["bill_id"].split("-").first,
        congress_number:  issue_json["congress"],
        description:      issue_json["description"] || issue_json["context"],
        chamber:          issue_json["chamber"],
        range:            issue_json["range"]
      })
    end
  end

  def display_legislative_day
    legislative_day.strftime("%a %b %-d")
  end
end
