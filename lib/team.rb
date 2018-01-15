require './lib/deep_freezable'

class Team
  extend DeepFreezable
  Team::COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end
