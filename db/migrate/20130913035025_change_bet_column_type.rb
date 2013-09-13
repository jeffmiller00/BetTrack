class ChangeBetColumnType < ActiveRecord::Migration
  def change
    change_table :bets do |t|
      t.references :bet_result, index: true
    end
  end
end
