class Bet < ActiveRecord::Base
  belongs_to :bet_type
  belongs_to :sport
  belongs_to :source
end
