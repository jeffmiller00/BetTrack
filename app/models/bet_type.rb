class BetType < ActiveRecord::Base

  def self.initialize
    res = BetType.find_by_name 'spread'
    if res.nil?
      BetType.create(name: 'spread')
    end

    res = BetType.find_by_name 'moneyline'
    if res.nil?
      BetType.create(name: 'moneyline')
    end

    res = BetType.find_by_name 'future'
    if res.nil?
      BetType.create(name: 'future')
    end
  end

end
