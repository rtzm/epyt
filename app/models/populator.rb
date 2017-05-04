module Populator
  def self.populate(mode, date = Date.current)
    jsons = SunlightService.get_json_for(mode, date)
    mode_class = mode.to_s.classify.constantize
    mode_class.create_many_from_json(jsons)
  end
end
