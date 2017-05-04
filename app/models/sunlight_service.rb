module SunlightService
  # TODO: Using Sunlight's free api until I get ProPublica api key
  API_BASE_URL = "https://congress.api.sunlightfoundation.com"
  MODE_PATHS = {
    issues: "/upcoming_bills?order=scheduled_at",
    politicians: "/legislators?per_page=all",
    votes: "/votes"
  }

  # MODE_OPTIONS = {
  #  issues: "?legislative_day=" + date.to_s
  # }

  class InvalidModeError < ArgumentError
    def initialize(msg="Invalid mode for this module")
      super
    end
  end

  def self.get_json_for(mode, date = Date.current)
    raise InvalidModeError unless MODE_PATHS.keys.include?(mode)
    # create the HTTP post request
    url = API_BASE_URL + MODE_PATHS[mode]

    # move these options out into top of module logic? see above
    url +=  "?legislative_day=" + date.to_s if mode == :issues

    uri = URI(url)
    request = Net::HTTP::Get.new(uri)

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    # connect to the server and send the request
    response = http.request(request)
    return JSON.parse(response.body)["results"]
  end
end
