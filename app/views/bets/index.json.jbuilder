json.array!(@bets) do |bet|
  json.extract! bet, :date, :bet_type_id, :sport_id, :source_id, :description, :amount, :spread, :bet, :won
  json.url bet_url(bet, format: :json)
end
