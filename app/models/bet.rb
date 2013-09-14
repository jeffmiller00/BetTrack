require 'roo'

class Bet < ActiveRecord::Base
  belongs_to :bet_type
  belongs_to :sport
  belongs_to :source
  belongs_to :bet_result


  def self.load
    ex = Roo::Excelx.new("/home/user/local/src/BetTrack/db/Bets.xlsx")
    ex.default_sheet = ex.sheets.first

    input = InputType.find_by_name("Loaded").id

    2.upto(ex.last_row) do |row_num|
      date  = ex.cell(row_num,1)
      sport = ex.cell(row_num,2)
      source = ex.cell(row_num,3)
      desc = ex.cell(row_num,4)
      amount = ex.cell(row_num,5)
      spread = ex.cell(row_num,6)
      won = ex.cell(row_num,8)

      if won == 'TRUE'
        br = BetResult.find_by_name('Win')          
      elsif won == 'Push'
        br = BetResult.find_by_name('Push')
      elsif won == "FALSE"
        br = BetResult.find_by_name('Loss')
      end

      s = Sport.find_or_create_by(abbrev: sport)
      src = Source.find_or_create_by(abbrev: source)

      Bet.find_or_create_by(
        date: date,
        bet_type_id: nil,
        sport_id: s.id,
        source_id: src.id, 
        description: desc, 
        amount: amount, 
        spread: spread, 
        bet_result_id: (br && br.id) || nil,
        input_type_id: input)
    end
  end
end
