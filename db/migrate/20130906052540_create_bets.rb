class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.date :date
      t.references :bet_type, index: true
      t.references :sport, index: true
      t.references :source, index: true
      t.string :description
      t.float :amount
      t.float :spread
      t.boolean :bet
      t.string :won

      t.timestamps
    end
  end
end
