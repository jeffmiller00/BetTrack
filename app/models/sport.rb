class Sport < ActiveRecord::Base
  def initialize
    res = Sport.find_by_name 'National Football League'
    Sport.create(name: 'National Football League') if res.nil?

    res = Sport.find_by_name 'Major League Baseball'
    Sport.create(name: 'Major League Baseball') if res.nil?

    res = Sport.find_by_name 'National Basketball Association'
    Sport.create(name: 'National Basketball Association') if res.nil?
  end
end
