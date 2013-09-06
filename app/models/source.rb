class Source < ActiveRecord::Base

  def self.initialize
    res = Source.find_by_name 'Wunderdog'
    if res.nil?
      Source.create(name: 'Wunderdog',
                    website: 'http://www.wunderdog.com/',
                    twitter: 'WunderdogSports',
                    trust: 1.00)
    end

    res = Source.find_by_name 'Vegas Runner'
    if res.nil?
      Source.create(name: 'Vegas Runner',
                    website: 'http://www.vegasrunner.com/',
                    twitter: 'VegasRunner',
                    trust: 1.00)

    end

    res = Source.find_by_name 'Prediction Machine'
    if res.nil?
      Source.create(name: 'Prediction Machine',
                    website: 'http://www.predictionmachine.com/',
                    twitter: 'PredictionMachine',
                    trust: 0.50)

    end
  end
end
