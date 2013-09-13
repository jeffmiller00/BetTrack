class RemoveBetFromBets < ActiveRecord::Migration
  def change
    remove_column :bets, :bet, :boolean
  end
end
